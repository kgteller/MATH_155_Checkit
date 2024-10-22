class Generator(BaseGenerator):
    def data(self):
        n_1="228"
        min_1=round(71.4,1)
        q1_1=round(109.6,1)
        med_1=round(148.0,1)
        q3_1=round(173.3,1)
        max_1=round(310.4,1)
        mean_1=round(151.3,1)
        stdev_1=round(59.2,1)
        n_2="228"
        min_2=round(89.2,1)
        q1_2=round(109.2,1)
        med_2="130.9"
        q3_2=round(182.0,1)
        max_2=round(281.1,1)
        mean_2=round(145.6,1)
        stdev_2=round(58.26,1)
        OC_1=randint(0,3)
        year_1=choice(["1996", "2011"])
        score_a=[["minimum", "more", "25%", q1_1], ["minimum", "more", "75%", q3_1], ["maximum", "less", "25%", q3_1], ["maximum", "less", "75%", q1_1]]
        score_b=[["minimum", "more", "25%", q1_2], ["minimum", "more", "75%", q3_2], ["maximum", "less", "25%", q3_2], ["maximum", "less", "75%", q1_2]]
        min_max=score_a[OC_1][0]
        dir_1=score_a[OC_1][1]
        percent_1=score_a[OC_1][2]
        answer_1=score_a[OC_1][3]
        if year_1=="2011":
            min_max=score_b[OC_1][0]
            dir_1=score_b[OC_1][1]
            percent_1=score_b[OC_1][2]
            answer_1=score_b[OC_1][3]
        OC_2=randint(0,3)
        annual=[["1996", "one", q1_1], ["1996", "three", q3_1], ["2011", "one", q1_2], ["2011", "three", q3_2]]
        answer2=[[n_1, "25%"], [n_1, "75%"], [n_2, "25%"], [n_2, "75%"]]
        year_2=annual[OC_2][0]
        quar_2=annual[OC_2][1]
        change_2=annual[OC_2][2]
        number_2=answer2[OC_2][0]
        percent_2=answer2[OC_2][1]
        stand_mean=choice(["standard deviation", "mean"])
        dir_3=choice(["less than the minimum value", "greater than the maximum value"])
        answer_3="The standard deviation would go up. Explanation needed."
        if stand_mean=="mean" and dir_3=="less than the minimum value":
            answer_3="The mean would go down. Explanation needed."
        if stand_mean=="mean" and dir_3=="greater than the maximum value":
            answer_3="The mean would go up. Explanation needed."
        z_vala=round(random()*(max_1-min_1)+min_1,1)
        z_valb=round(random()*(max_2-min_2)+min_2,1)
        ans_4a=round((z_vala-mean_1)/stdev_1,2)
        ans_4b=round((z_valb-mean_2)/stdev_2,2)
        year_5=choice(["1996", "2011"])
        answer_5="Skewed right. Explanation needed."
        IQR_1=q3_1-q1_1
        IQR_2=q3_2-q1_2
        ub_1=round(q3_1+1.5*IQR_1,1)
        ub_2=round(q3_2+1.5*IQR_2,1)
        lb_1=round(q1_1-1.5*IQR_1,1)
        lb_2=round(q1_2-1.5*IQR_2,1)
        
        

        return {
            "n_1":n_1,
            "min_1":min_1,
            "q1_1":q1_1,
            "med_1":med_1,
            "q3_1":q3_1,
            "max_1":max_1,
            "mean_1":mean_1,
            "stdev_1":stdev_1,
            "n_2":n_2,
            "min_2":min_2,
            "q1_2":q1_2,
            "med_2":med_2,
            "q3_2":q3_2,
            "max_2":max_2,
            "mean_2":mean_2,
            "stdev_2":stdev_2,
            "year_1":year_1,
            "min_max":min_max,
            "dir_1":dir_1,
            "percent_1":percent_1,
            "answer_1":answer_1,
            "year_2":year_2,
            "quar_2":quar_2,
            "change_2":change_2,
            "number_2":number_2,
            "percent_2":percent_2,
            "stand_mean":stand_mean,
            "dir_3":dir_3,
            "answer_3":answer_3,
            "year_5":year_5,
            "answer_5":answer_5,
            "za":z_vala,
            "zb":z_valb,
            "answer4a":ans_4a,
            "answer4b":ans_4b,
            "ub_1":ub_1,
            "ub_2":ub_2,
            "lb_1":lb_1,
            "lb_2":lb_2,
        }
