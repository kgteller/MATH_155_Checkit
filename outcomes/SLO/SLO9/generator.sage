class Generator(BaseGenerator):
    def data(self):
            
            
            pvalue=0
    
            n=randint(20,50)
            df=n-1

            htt=randint(0,2)
            T = RealDistribution('t', df)

            scenario=randint(0,4)

            if scenario==0:
                prose="A sociologist is studying the average amount of sleep residents get in a certain city.  They conduct a survey of the cities residents.  Out of "
                units=" hours"
                sample=" surveyed residents, the sample average amount of sleep was "
                population=" the average amount of sleep amongst the city's residents"
                #success2="find the subject challenging"
                xmin=6.5
                xmax=9.5
                smin=0.25
                smax=1
                mu0=8
                subjects="residents"

            if scenario==1:
                prose="A farmer is curious about the effects of a new fertilizer on the height of her corn stalks.  She measures the heights of a random selection of her stalks.  Out of "
                units=" meters"
                sample=" measured corn stalks, the sample average height "
                population=" the average height of her corn stalks"
                #success2="find the subject challenging"
                xmin=2.2
                xmax=2.8
                smin=0.1
                smax=0.3
                mu0=round(2.5,3)
                subjects="stalks"

            if scenario==2:
                prose="An engineer examples the Brinell hardness of an experimental allow.  She measures the hardness of a random collection of alloy samples.  Out of "
                units=" Brinell hardness"
                sample=" measured alloy samples, the average sample hardness was "
                population=" the average hardness of the alloy"
                #success2="find the subject challenging"
                xmin=160
                xmax=170
                smin=1
                smax=15
                mu0=170
                subjects="alloy samples"

            if scenario==3:
                prose="A financial consultant examines the rates of return of stocks in a portfolio.  He takes a random samples of stocks and analyzes them.  Out of "
                units=" % return"
                sample=" analyzed stocks, the average % rate of return "
                population=" the average % rate of return for the portfolio"
                #success2="find the subject challenging"
                xmin=-20
                xmax=45
                smin=30
                smax=70
                mu0=5
                subjects="stocks"

            if scenario==4:
                prose="A nurse is measuring the systolic blood pressure of randomly selected adult males in a town.  Out of "
                units=" mmhg"
                sample=" selected adult males from the town "
                population=" the average systolic blood pressure of adult males from this town"
                #success2="find the subject challenging"
                xmin=110
                xmax=130
                smin=20
                smax=30
                mu0=120   
                subjects="adult males"




            if htt==0:
                ineq="is not equal to"
                ineq2="more extreme"
                ineqsymb="neq"
            if htt==1:
                ineq="is greater than"
                ineq2="greater"
                ineqsymb="gneq"
            if htt==2:
                ineq="is less than"
                ineq2="less than"
                ineqsymb="lneq"

            s=round(uniform(smin, smax),3)
            SE=numerical_approx(s/sqrt(n))
            tempP=uniform(0.01, 0.09)
            if htt==0:
                tempP=tempP/2

            tempT=abs(T.cum_distribution_function_inv(tempP))
            

            if htt==0:
                xbar=round(mu0+tempT*SE*(-1)^randint(0,1),3)
            if htt==1:
                xbar=round(mu0+tempT*SE,3)
            if htt==2:
                xbar=round(mu0-tempT*SE,3)    

            tscore=(xbar-mu0)/SE
            if htt==0:
                pvalue=(1-(T.cum_distribution_function(abs(tscore))))*2
            if htt==1:
                pvalue=1-T.cum_distribution_function(tscore)
            if htt==2:
                pvalue=T.cum_distribution_function(tscore)




            CL=choice([95, 95, 99])
            t = T.cum_distribution_function_inv(1-((100-CL)/200))
            LB=numerical_approx(xbar-t*SE)
            UB=numerical_approx(xbar+t*SE)
            alpha=round(choice([.1,.05,.01]),2)
            claim = "We fail to reject the null hypothesis,"
            conclusion="There is not enough evidence to support the claim that"
            if pvalue<alpha:
                claim="We reject the null hypothesis and accept the alternative hypothesis,"
                conclusion=" We accept the claim that"


            return{
                "n":n,
                "xbar":xbar,
                "s":s,
                "mu0":mu0,
                "ineq":ineq,
                "ineq2":ineq2,
                "ineqsymb":ineqsymb,
                "units":units,
                "pvalue":pvalue,
                "prose":prose,
                "sample":sample,
                "CL":CL,
                #"success2":success2,
                "population":population,
                "SE":SE,
                "tscore":tscore,
                "htt":htt,
                "LB":LB,
                "UB":UB,
                "t":t,
                "subjects":subjects,
                "claim":claim,
                "conclusion":conclusion,
                 "alpha":alpha,

            }