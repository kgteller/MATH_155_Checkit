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
        

        return {
            "graph_2":graph_2,
            "answer_2":answer_2,
            "industry_3":industry_3,
            "answer_3":answer_3,
            "attack_4":attack_4,
            "industry_4":industry_4,
            "answer_4":round((answer_4),0),
            
        }
