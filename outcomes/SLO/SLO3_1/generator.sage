class Generator(BaseGenerator):
    def data(self):
        graph_var=[["All essential workers", 52, 48710000], ["Social workers", 78, 2320000], ["Health care", 77, 19090000], ["Critical retail", 53, 7570000], ["Medical supplies", 46, 520000], ["Food processing", 38, 2290000], ["Delivery, warehousing", 34, 2620000], ["Financial IT services", 28, 360000], ["Utility workers", 23, 2100000], ["Farmers", 23, 2100000], ["Hazardous materials", 19, 330000], ["Law enforcement", 17, 1940000], ["Transit, transportation", 15, 6140000], ["Defense", 14, 1030000], ["Resource extraction", 11, 380000]]
        OC_2=randint(1,14)
        OC_3=randint(0,14)
        OC_4=randint(1,14)
        while OC_2==OC_3:
            OC_3=randint(0,14)
        while OC_3==OC_4:
            OC_4=randint(1,14)
        while OC_2==OC_4:
            OC_4=randint(1,14)
        job_2=graph_var[OC_2][0]
        answer_2=graph_var[OC_2][1]
        job_3=graph_var[OC_3][0]
        total_3=graph_var[OC_3][2]
        job_4=graph_var[OC_4][0]
        answer_4p=graph_var[OC_4][1]
        answer_4t=graph_var[OC_4][2]

        return {
            "job_2":job_2,
            "answer_2":answer_2,
            "job_3":job_3,
            "total_3":total_3,
            "job_4":job_4,
            "answer_4p":answer_4p,
            "answer_4t":answer_4t,
            "answer_4":answer_4p*answer_4t/100,
        }
