class Generator(BaseGenerator):
    def data(self):
        n_1="200"
        min_1="0"
        q1_1="0.9"
        med_1="9"
        q3_1="32.8"
        max_1="92.9"
        mean_1="21.3"
        stdev_1="26.0"
        n_2="200"
        min_2="19.1"
        q1_2="85.7"
        med_2="109"
        q3_2="130"
        max_2="430"
        mean_2="108.4"
        stdev_2="42.7"
        n_3="198"
        min_3="19.1"
        q1_3="85.7"
        med_3="109"
        q3_3="130"
        max_3="188"
        mean_3="105.9"
        stdev_3="33.8"
        OC_1=randint(0,3)
        year_1=choice(["2000", "2019"])
        score_a=[["minimum", "more", "25", q1_1], ["minimum", "more", "75", q3_1], ["maximum", "less", "25", q3_1], ["maximum", "less", "75", q1_1]]
        score_b=[["minimum", "more", "25", q1_2], ["minimum", "more", "75", q3_2], ["maximum", "less", "25", q3_2], ["maximum", "less", "75", q1_2]]
        min_max=score_a[OC_1][0]
        dir_1=score_a[OC_1][1]
        percent_1=score_a[OC_1][2]
        answer_1=score_a[OC_1][3]
        if year_1=="2019":
            min_max=score_b[OC_1][0]
            dir_1=score_b[OC_1][1]
            percent_1=score_b[OC_1][2]
            answer_1=score_b[OC_1][3]
        OC_2=randint(0,3)
        annual=[["2000", "one", q1_1], ["2000", "three", q3_1], ["2019", "one", q1_2], ["2019", "three", q3_2]]
        answer2=[[n_1, "25"], [n_1, "75"], [n_2, "25"], [n_2, "75"]]
        year_2=annual[OC_2][0]
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
        year_5=choice(["2000", "2019"])
        answer_5="Skewed right"
        
        

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
            "n_3":n_3,
            "min_3":min_3,
            "q1_3":q1_3,
            "med_3":med_3,
            "q3_3":q3_3,
            "max_3":max_3,
            "mean_3":mean_3,
            "stdev_3":stdev_3,
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
        }
