class Generator(BaseGenerator):
    def data(self):
        n_1="53"
        min_1="-10.07"
        q1_1="3.14"
        med_1="5.13"
        q3_1="7.90"
        max_1="28.05"
        mean_1="6.25"
        stdev_1="5.94"
        n_2="53"
        min_2="-7.48"
        q1_2="-0.68"
        med_2="1.23"
        q3_2="2.67"
        max_2="5.97"
        mean_2="0.92"
        stdev_2="2.85"
        OC_1=randint(0,3)
        country_1=choice(["China", "the United States"])
        score_a=[["minimum", "more", "25", q1_1], ["minimum", "more", "75", q3_1], ["maximum", "less", "25", q3_1], ["maximum", "less", "75", q1_1]]
        score_b=[["minimum", "more", "25", q1_2], ["minimum", "more", "75", q3_2], ["maximum", "less", "25", q3_2], ["maximum", "less", "75", q1_2]]
        min_max=score_a[OC_1][0]
        dir_1=score_a[OC_1][1]
        percent_1=score_a[OC_1][2]
        answer_1=score_a[OC_1][3]
        if country_1=="the United States":
            min_max=score_b[OC_1][0]
            dir_1=score_b[OC_1][1]
            percent_1=score_b[OC_1][2]
            answer_1=score_b[OC_1][3]
        OC_2=randint(0,3)
        annual=[["China", "one", q1_1], ["China", "three", q3_1], ["the United States", "one", q1_2], ["the United States", "three", q3_2]]
        answer2=[[n_1, "25"], [n_1, "75"], [n_2, "25"], [n_2, "75"]]
        country_2=annual[OC_2][0]
        quar_2=annual[OC_2][1]
        change_2=annual[OC_2][2]
        number_2=answer2[OC_2][0]
        percent_2=answer2[OC_2][1]
        dir_3=choice(["less than the minimum value", "greater than the maximum value"])
        answer_3="The standard deviation would go up"
        country_5=choice(["China", "the United States"])
        answer_5="Skewed right or roughly symmetric"
        if country_5=="the United States":
            answer_5="Skewed left"
        

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
            "country_1":country_1,
            "min_max":min_max,
            "dir_1":dir_1,
            "percent_1":percent_1,
            "answer_1":answer_1,
            "country_2":country_2,
            "quar_2":quar_2,
            "change_2":change_2,
            "number_2":number_2,
            "percent_2":percent_2,
            "dir_3":dir_3,
            "answer_3":answer_3,
            "country_5":country_5,
            "answer_5":answer_5,
        }
