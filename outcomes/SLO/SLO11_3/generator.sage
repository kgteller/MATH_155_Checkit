from scipy.stats import t
class Generator(BaseGenerator):
    def data(self):
        ND=RealDistribution('gaussian', 1)
        zscore_1=round(uniform(-2.85, 2.85),2)
        zscore_2=round(uniform(-1.88, 2.03),2)
        zscore_3=round(uniform(-1.75, -.05),2)
        zscore_4=round(uniform(.03, 1.79),2)

        n1=randint(30,100)
        mean_1=round(.09+uniform(-.4,.5),2)
        SD_1=.20
        STD_1=round(SD_1+uniform(.01,.5),2)
        CL=randint(88,99)
        alpha=1-CL/100
        T1=RealDistribution('t', n1-1)
        n2=randint(30,100)
        mean_2=round(.12+uniform(-.7,.7),2)
        SD_2=.10
        STD_2=round(SD_2+uniform(-.05,.75),2)
        CL2=randint(88,99)
        CL_3=randint(85,99)
        ME=round(uniform(.005,.05),2)
        alpha2=1-CL/100
        T2=RealDistribution('t', n2-1)
        ind_1=choice(["NYSE", "NASDAQ"])
        ch1=randint(0,1)
        zort=choice(["","Also, the population standard deviation for the {} is known to be {}.".format(ind_1,round(SD_1,1))])
        Pop_SD=round(SD_2,2)
        Z3=ND.cum_distribution_function_inv((1+CL_3/100)/2)
        if zort=="":
            CV=T1.cum_distribution_function_inv(1-alpha/2)
            SE=STD_1/sqrt(n1)
            SE_rnd=round(SE,4)
            CI_upper=round(mean_1+(CV)*(SE),4)
            CI_lower=round(mean_1-(CV)*(SE),4)
            answer_4=ceil((Z3*STD_1/ME)^2)
        else:
            CV=ND.cum_distribution_function_inv(1-alpha/2)
            SE=SD_1/sqrt(n1)
            SE_rnd=round(SE,4)
            CI_upper=round(mean_1+(CV)*(SE),4)
            CI_lower=round(mean_1-(CV)*(SE),4)
            answer_4=ceil((Z3*SD_1/ME)^2)
        dep_1=round((zscore_1*SD_1+mean_1),0)
        answer_1=round(((dep_1-mean_1)/SD_1),2)
        ind_2="NASDAQ"
        mean_diff = mean_1-mean_2
        std_err = sqrt((STD_1^2)/n1+(STD_2^2)/n2)
        degrees_of_freedom = int((std_err^4/((STD_1^2/n1)^2/(n1-1)+(STD_2^2/n2)^2/(n2-1))))
        margin_of_error = t.ppf((1 + CL2/100) / 2, degrees_of_freedom) * std_err
        lower_bound = round(mean_diff - margin_of_error,4)
        upper_bound = round(mean_diff + margin_of_error,4)
        if ind_1=="NASDAQ":
            dep_1=round((zscore_1*SD_2+mean_2),0)
            answer_1=round(((dep_1-mean_2)/SD_2),2)
            zort=choice(["","Also, the population standard deviation for the {} is known to be {}.".format(ind_1,SD_2)])
            Pop_SD=round(SD_1,2)
            if zort=="":
                CV=T2.cum_distribution_function_inv(1-alpha2/2)
                SE=STD_2/sqrt(n2)
                SE_rnd=round(SE,4)
                CI_upper=round(mean_2+(CV)*(SE),4)
                CI_lower=round(mean_2-(CV)*(SE),4)
                answer_4=ceil((Z3*STD_2/ME)^2)
            else:
                CV=ND.cum_distribution_function_inv(1-alpha2/2)
                SE=SD_2/sqrt(n2)
                SE_rnd=round(SE,4)
                CI_upper=round(mean_2+(CV)*(SE),4)
                CI_lower=round(mean_2-(CV)*(SE),4)
                answer_4=ceil((Z3*SD_2/ME)^2)
            ind_2="NYSE"
            mean_diff = mean_2-mean_1
            lower_bound = round(mean_diff - margin_of_error,4)
            upper_bound = round(mean_diff + margin_of_error,4)
        
        
        
        return {
            "ind_1":ind_1,
            "ind_2":ind_2,
            "zort":zort,
            "CL":CL,
            "CL2":CL2,
            "CL3":CL_3,
            "n1":n1,
            "n2":n2,
            "mean1":mean_1,
            "STD1":STD_1,
            "Pop_SD":Pop_SD,
            "mean2":mean_2,
            "STD2":STD_2,
            "CV":CV,
            "SE":SE_rnd,
            "CI_U":CI_upper,
            "CI_L":CI_lower,
            "LB":lower_bound,
            "UB":upper_bound,
            "ME":ME,
            "ans_4":answer_4,
           

        }