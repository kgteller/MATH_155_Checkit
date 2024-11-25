import numpy as np
class Generator(BaseGenerator):
    def data(self):
        # country a skewed
        a_1=2
        b_1=2
        dist_1=RealDistribution('lognormal', [a_1,b_1])
        my_data=[round(dist_1.get_random_element(),1) for _ in range(10)]
        data_1=my_data[0]
        data_2=my_data[1]
        data_3=my_data[2]
        data_4=my_data[3]
        data_5=my_data[4]
        data_6=my_data[5]
        data_7=my_data[6]
        data_8=my_data[7]
        data_9=my_data[8]
        data_10=my_data[9]

        # country b symmetric
        a_2=4
        b_2=.1
        dist_2=RealDistribution('lognormal', [a_2,b_2])
        my_data_2=[round(dist_2.get_random_element(),1) for _ in range(10)]
        data_1_2=my_data_2[0]
        data_2_2=my_data_2[1]
        data_3_2=my_data_2[2]
        data_4_2=my_data_2[3]
        data_5_2=my_data_2[4]
        data_6_2=my_data_2[5]
        data_7_2=my_data_2[6]
        data_8_2=my_data_2[7]
        data_9_2=my_data_2[8]
        data_10_2=my_data_2[9]


        #OC_1=randint(0,3)
        country_1=choice(["Country A", "Country B"])
        #score_a=[["minimum", "more", "25", q1_1], ["minimum", "more", "75", q3_1], ["maximum", "less", "25", q3_1], ["maximum", "less", "75", q1_1]]
        #score_b=[["minimum", "more", "25", q1_2], ["minimum", "more", "75", q3_2], ["maximum", "less", "25", q3_2], ["maximum", "less", "75", q1_2]]
        #min_max=score_a[OC_1][0]
        #dir_1=score_a[OC_1][1]
        #percent_1=score_a[OC_1][2]
        #answer_1=score_a[OC_1][3]
        ans1=np.mean(my_data_2)
        ans1_a=np.median(my_data_2)
        ans2=np.var(my_data_2)
        ans2_a=np.std(my_data_2)
        country_2="Country A"
        skewa=np.mean(my_data)-np.median(my_data)
        skewb=np.mean(my_data_2)-np.median(my_data_2)
        if skewa>10:
            skew= skew="Skewed Right"
        elif skewa<-10:
             skew="Skewed Left"
        else:
            skew="Roughly Symmetric"
        cheby1=ans1+2*ans2_a
        cheby1_a=ans1-2*ans2_a
        cheby2=ans1+3*ans2_a
        cheby2_a=ans1-3*ans2_a
        emp1=ans1+ans2_a
        emp1_a=ans1-ans2_a

        if country_1=="Country A":
            ans1=np.mean(my_data)
            ans1_a=np.median(my_data)
            ans2=np.var(my_data)
            ans2_a=np.std(my_data)
            if skewb>10:
                skew="Skewed Right"
            elif skewb<-10:
                skew="Skewed Left"
            else:
                skew="Roughly Symmetric"
            country_2= "Country B"
            cheby1=ans1+2*ans2_a
            cheby1_a=ans1-2*ans2_a
            cheby2=ans1+3*ans2_a
            cheby2_a=ans1-3*ans2_a
            emp1=ans1+ans2_a
            emp1_a=ans1-ans2_a
        normality=[["nothing is known about the population distribution"],["we now that the polulation has a normal distibution"]]
        OC_1=randint(0,1)
        data_info=normality[OC_1][0]
        rule=[["75",cheby1,cheby1_a],["89",cheby2,cheby2_a]]
        percent=rule[OC_1][0]
        lb=rule[OC_1][2]
        ub=rule[OC_1][1]
        if OC_1==1:
            OC_2=randint(0,2)
            rule=[["68",emp1,emp1_a],["95",cheby1,cheby1_a],["99.7",cheby2,cheby2_a]]
            percent=rule[OC_2][0]
            lb=rule[OC_2][2]
            ub=rule[OC_2][1]
        absskew=abs(skewa)-abs(skewb)
        if absskew > 0:
            country_skew="Country A"
        else:
            country_skew="Country B"   
        #    dir_1=score_b[OC_1][1]
        #    percent_1=score_b[OC_1][2]
        #    answer_1=score_b[OC_1][3]
        #OC_2=randint(0,3)
        #annual=[["China", "one", q1_1], ["China", "three", q3_1], ["the United States", "one", q1_2], ["the United States", "three", q3_2]]
        #answer2=[[n_1, "25"], [n_1, "75"], [n_2, "25"], [n_2, "75"]]
        #country_2=annual[OC_2][0]
        #quar_2=annual[OC_2][1]
        #change_2=annual[OC_2][2]
        #number_2=answer2[OC_2][0]
        #percent_2=answer2[OC_2][1]
        #dir_3=choice(["less than the minimum value", "greater than the maximum value"])
        #answer_3="The standard deviation would go up"
        #country_5=choice(["China", "the United States"])
        #answer_5="Skewed right or roughly symmetric"
        #if country_5=="the United States":
        #    answer_5="Skewed left"
        

        return {
            "country_1":country_1,
            "country_2":country_2,
            "d1":data_1,
            "d2":data_2,
            "d3":data_3,
            "d4":data_4,
            "d5":data_5,
            "d6":data_6,
            "d7":data_7,
            "d8":data_8,
            "d9":data_9,
            "d10":data_10,
            "d1_2":data_1_2,
            "d2_2":data_2_2,
            "d3_2":data_3_2,
            "d4_2":data_4_2,
            "d5_2":data_5_2,
            "d6_2":data_6_2,
            "d7_2":data_7_2,
            "d8_2":data_8_2,
            "d9_2":data_9_2,
            "d10_2":data_10_2,
            "ans1":ans1,
            "ans1a":ans1_a,
            "ans2":ans2,
            "ans2a":ans2_a,
            "skewness":skew,
            "data_info":data_info,
            "percent":percent,
            "lower_bound":lb,
            "upper_bound":ub,
            "country_skew":country_skew,
            
        }
