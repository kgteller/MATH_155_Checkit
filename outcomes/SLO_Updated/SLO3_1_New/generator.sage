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


        graph_var=[[60, 3], [80, 27], [100, 37], [120, 28], [140, 8], [160, 7], [180, 0], [200, 1], [220, 1], [240, 0]]
        times=[["3", "60 and 80 minutes"], ["27", "80 and 100 minutes"], ["37", "100 and 120 minutes"], ["28", "120 and 140 minutes"], ["8", "140 and 160 minutes"], ["7", "160 and 180 minutes"]]
        OC_5=randint(0,5)
        OC_6=randint(0,5)
        number_2=times[OC_5][0]
        answer_2_1=times[OC_5][1]
        minutes_3a=graph_var[OC_6][0]
        minutes_3b=graph_var[OC_6 + 3][0]
        answer_3a=graph_var[OC_6][1]
        answer_3b=graph_var[OC_6 + 1][1]
        answer_3c=graph_var[OC_6 + 2][1]
        answer_3=round(((answer_3a + answer_3b + answer_3c)/112),4)*100
        return {
            "job_2":job_2,
            "answer_2":answer_2,
            "job_3":job_3,
            "total_3":total_3,
            "job_4":job_4,
            "answer_4p":answer_4p,
            "answer_4t":answer_4t,
            "answer_4":answer_4p*answer_4t/100,
            "number_2":number_2,
            "answer_2_1":answer_2_1,
            "minutes_3a":minutes_3a,
            "minutes_3b":minutes_3b,
            "answer_3a":answer_3a,
            "answer_3b":answer_3b,
            "answer_3c":answer_3c,
            "answer_3":float("{:.2f}".format(answer_3)),
        }
