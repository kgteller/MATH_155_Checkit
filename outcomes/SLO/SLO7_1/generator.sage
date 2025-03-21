class Generator(BaseGenerator):
    def data(self):
        ND=RealDistribution('gaussian', 1)
        zscore_1=round(uniform(-2.85, 2.85),2)
        zscore_2=round(uniform(-1.88, 2.03),2)
        zscore_3=round(uniform(-1.75, -.05),2)
        zscore_4=round(uniform(.03, 1.79),2)
        
        mean_1=955
        SD_1=123
        mean_2=1040
        SD_2=135
        ind_1=choice(["White woman", "Black woman"])
        dep_1=round((zscore_1*SD_1+mean_1),0)
        answer_1=round(((dep_1-mean_1)/SD_1),2)
        if ind_1=="Black woman":
            dep_1=round((zscore_1*SD_2+mean_2),0)
            answer_1=round(((dep_1-mean_2)/SD_2),2)
        
        
       
        ind_2=choice(["White woman", "Black woman"])
        ind_3="Black Woman"
        ch_1=randint(0,1)
        dir_1=choice(["higher", "lower"])
        #dir_2=choice(["larger", "smaller"]
        min_max="minimum"


        if ch_1==1:
            dep_2=round((zscore_2*SD_1+mean_1),0)
            answer_2=round(ND.cum_distribution_function((dep_2 - mean_1)/SD_1),4)
            if ind_2=="Black woman":
                dep_2=round((zscore_2*SD_2+mean_2),0)
                answer_2=round(ND.cum_distribution_function((dep_2 - mean_2)/SD_2),4)
                ind_3="White woman"
            percent_1=randint(33, 71)
            percent_1a=percent_1
            if dir_1=="lower":
                min_max="maximum"
                percent_1a=100-percent_1
            answer_3z=ND.cum_distribution_function_inv(percent_1a/100)
            answer_3=round((answer_3z*(SD_2/10) + mean_2),0)
            if ind_2=="Black woman":
                answer_3=round((answer_3z*(SD_1/10) + mean_1),0)
        else:
            dep_2=round((zscore_2*(SD_1/10)+mean_1),0)
            answer_2=round(ND.cum_distribution_function((dep_2 - mean_1)/(SD_1/10)),4)
            if ind_2=="Black woman":
                dep_2=round((zscore_2*(SD_2/10)+mean_2),0)
                answer_2=round(ND.cum_distribution_function((dep_2 - mean_2)/(SD_2/10)),4)
                ind_3="White woman"
            percent_1=randint(33, 71)
            percent_1a=percent_1
            if dir_1=="lower":
                min_max="maximum"
                percent_1a=100-percent_1
            answer_3z=ND.cum_distribution_function_inv(percent_1a/100)
            answer_3=round((answer_3z*SD_2 + mean_2),0)
            if ind_2=="Black woman":
                answer_3=round((answer_3z*SD_1 + mean_1),0)
        
        statements1=[["If a sample of 100 {} is taken what is the probability that the sample has a mean bone density of {}  or less?".format(ind_2,dep_2)],["If you randomly choose someone who is {}, what is the probability that they have a bone density of {} or less?".format(ind_2,dep_2)]]
        stmt1=statements1[ch_1][0]
        statements2=[["If you randomly choose someone who is {}, what is the {} bone density they can have and still be {} than {}% of all other {}.".format(ind_3,min_max,dir_1,percent_1,ind_3)],["If you have a sample of 100 {}, what is the {} sample mean bone density that is {} than {}% of sample mean bone densities.".format(ind_3,min_max,dir_1,percent_1)]]
        stmt2=statements2[ch_1][0]
        #if ind_2=="Black woman":
            

       
       

        
        
        
        ind_4="Black woman"
        dep_3=round((zscore_3*(SD_2/10)+mean_2),0)
        dep_4=round((zscore_4*(SD_2/10)+mean_2),0)
        answer_4=round(ND.cum_distribution_function((dep_4 - mean_2)/(SD_2/10)),4) - round(ND.cum_distribution_function((dep_3 - mean_2)/(SD_2/10)),4)
        if ind_1=="Black woman":
            ind_4="White woman"
            dep_3=round((zscore_3*(SD_1/10)+mean_1),0)
            dep_4=round((zscore_4*(SD_1/10)+mean_1),0)
            answer_4=round(ND.cum_distribution_function((dep_4 - mean_1)/(SD_1/10)),4) - round(ND.cum_distribution_function((dep_3 - mean_1)/(SD_1/10)),4)
        
        
        percent_2=randint(87, 96)
        dep_5=randint(980, 1010)
        answer_5b=round(1-(ND.cum_distribution_function((dep_5 - mean_1)/SD_1)),4)
        answer_5a=round(ND.cum_distribution_function((dep_5 - mean_2)/SD_2),4)
        
        
        return {
            "ind_1":ind_1,
            "dep_1":dep_1,
            "answer_1":"{:.2f}".format(answer_1),
            "ind_2":ind_2,
            "dep_2":dep_2,
            "answer_2":"{:.4f}".format(answer_2),
            "ind_3":ind_3,
            "dir_1":dir_1,
            "min_max":min_max,
            "percent_1":percent_1,
            "answer_3":answer_3,
            "ind_4":ind_4,
            "dep_3":dep_3,
            "dep_4":dep_4,
            "answer_4":"{:.4f}".format(answer_4),
            "percent_2":percent_2,
            "dep_5":dep_5,
            "answer_5a":answer_5a,
            "answer_5b":answer_5b,
            "statement2":stmt1,
            "statement3":stmt2,

        }
