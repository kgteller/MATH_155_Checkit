class Generator(BaseGenerator):
    def data(self):
        n_1="61"
        min_1=round(1.9,1)
        q1_1=round(6.9,1)
        med_1="18.0"
        q3_1=round(39.3,1)
        max_1=round(135.3,1)
        mean_1=round(27.4,1)
        stdev_1=round(27.8,1)
        n_2="61"
        min_2=round(1.6,1)
        q1_2=round(5.7,1)
        med_2="14.9"
        q3_2=round(34.4,1)
        max_2=round(108.7,1)
        mean_2=round(20.3,1)
        stdev_2=round(20.6,1)
        OC_1=randint(0,3)
        sex_1=choice(["male", "female"])
        score_a=[["minimum", "more", "25%", q1_1], ["minimum", "more", "75%", q3_1], ["maximum", "less", "25%", q3_1], ["maximum", "less", "75%", q1_1]]
        score_b=[["minimum", "more", "25%", q1_2], ["minimum", "more", "75%", q3_2], ["maximum", "less", "25%", q3_2], ["maximum", "less", "75%", q1_2]]
        min_max=score_a[OC_1][0]
        dir_1=score_a[OC_1][1]
        percent_1=score_a[OC_1][2]
        answer_1=score_a[OC_1][3]
        if sex_1=="female":
            min_max=score_b[OC_1][0]
            dir_1=score_b[OC_1][1]
            percent_1=score_b[OC_1][2]
            answer_1=score_b[OC_1][3]
        OC_2=randint(0,3)
        annual=[["male", "one", q1_1], ["male", "three", q3_1], ["female", "one", q1_2], ["female", "three", q3_2]]
        answer2=[[n_1, "25%"], [n_1, "75%"], [n_2, "25%"], [n_2, "75%"]]
        sex_2=annual[OC_2][0]
        quar_2=annual[OC_2][1]
        change_2=annual[OC_2][2]
        number_2=answer2[OC_2][0]
        percent_2=answer2[OC_2][1]
        stand_mean=choice(["standard deviation", "mean"])
        dir_3=choice(["less than the minimum value", "greater than the maximum value"])
        answer_3="The standard deviation would go up"
        if stand_mean=="mean" and dir_3=="less than the minimum value":
            answer_3="The mean would go down"
        if stand_mean=="mean" and dir_3=="greater than the maximum value":
            answer_3="The mean would go up"
        z_vala=round(random()*(max_1-min_1)+min_1,1)
        z_valb=round(random()*(max_2-min_2)+min_2,1)
        ans_4a=round((z_vala-mean_1)/stdev_1,2)
        ans_4b=round((z_valb-mean_2)/stdev_2,2)
        sex_5=choice(["male", "female"])
        answer_5="Skewed right"
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
            "sex_1":sex_1,
            "min_max":min_max,
            "dir_1":dir_1,
            "percent_1":percent_1,
            "answer_1":answer_1,
            "sex_2":sex_2,
            "quar_2":quar_2,
            "change_2":change_2,
            "number_2":number_2,
            "percent_2":percent_2,
            "stand_mean":stand_mean,
            "dir_3":dir_3,
            "za":z_vala,
            "zb":z_valb,
            "answer4a":ans_4a,
            "answer4b":ans_4b,
            "answer_3":answer_3,
            "sex_5":sex_5,
            "answer_5":answer_5,
            "ub_1":ub_1,
            "ub_2":ub_2,
            "lb_1":lb_1,
            "lb_2":lb_2,
        }
