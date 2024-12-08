class Generator(BaseGenerator):
    def data(self):
        graph_var=[["Consumer/Retail", 13], ["Insurance/Financial", 12], ["Manufacturing/Agriculture", 12], ["Government and Intergovernmental organization", 11], ["Healthcare", 9], ["Education", 7], ["Professional services", 7], ["Critical Infrastructure/Telecom", 6], ["Media/Enterainment", 5], ["Real Estate", 5]]
        OC_3=randint(0,9)
        OC_4=randint(0,9)
        while OC_3==OC_4:
            OC_4=randint(0,9)
        graph_2=choice(["histogram", "scatter plot", "time series", "single pie chart"])
        answer_2="No, data is not numerical"
        if graph_2=="scatter plot":
            answer_2="No, there is only one variable or the variable is not numerical"
        if graph_2=="time series":
            answer_2="No, none of the variables are time"
        if graph_2=="single pie chart":
            answer_2="Yes, if you knew the other 13% or added a category named 'Other'"
        industry_3=graph_var[OC_3][0]
        answer_3=graph_var[OC_3][1]
        attack_4=randint(1152, 8379)
        industry_4=graph_var[OC_4][0]
        answer_4=(attack_4*graph_var[OC_4][1])/100
        

        graph_var2=[[50, 3], [100, 8], [150, 11], [200, 6], [250, 5], [300, 6], [350, 3], [400, 2], [450, 4], [500, 2], [550, 0], [600, 1], [650, 0]]
        AA=[["8", "100 and 150"], ["11", "150 and 200"], ["5", "250 and 300"], ["4", "450 and 500"], ["1", "600 and 650"]]
        OC_2=randint(0,4)
        OC_1=randint(0,9)
        number_2=AA[OC_2][0]
        answer_2_1=AA[OC_2][1]
        assault_3a=graph_var2[OC_1][0]
        assault_3b=graph_var2[OC_1 + 3][0]
        answer_3a=graph_var2[OC_1][1]
        answer_3b=graph_var2[OC_1 + 1][1]
        answer_3c=graph_var2[OC_1 + 2][1]
        answer_3_1=round(((answer_3a + answer_3b + answer_3c)/51),4)*100

        return {
            "graph_2":graph_2,
            "answer_2":answer_2,
            "industry_3":industry_3,
            "answer_3":answer_3,
            "attack_4":attack_4,
            "industry_4":industry_4,
            "answer_4":round((answer_4),0),
            "number_2":number_2,
            "answer_2_1":answer_2_1,
            "assault_3a":assault_3a,
            "assault_3b":assault_3b,
            "answer_3a":answer_3a,
            "answer_3b":answer_3b,
            "answer_3c":answer_3c,
            "answer_3_1":"{:.2f}".format(answer_3_1),
        }
