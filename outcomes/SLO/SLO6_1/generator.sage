import numpy
class Generator(BaseGenerator):
    def data(self):
       
        n_1=randint(13,20)
    
        mu_1=randint(50, 100)
        sigma_1=randint(5,30)
        
        T = RealDistribution('gaussian', sigma_1)

        data_1=[0 for i in range(n_1)]

        datalist_1=[]

        for i in range(n_1-1):
            data_1[i]=abs(round(mu_1+T.get_random_element()))

        data_1[n_1-1]=abs(mu_1+4*sigma_1*(-1)^randint(0,1))

        data_1.sort()
        
        for i in range(n_1):
            entry={
                'x':data_1[i],
            }
            datalist_1.append(entry)
        
        mn=data_1[0]
        q1_1=numpy.percentile(data_1,25,method='weibull')
        med_1=median(data_1)
        q3_1=numpy.percentile(data_1,75,method='weibull')
        mx=data_1[n_1-1]

        OC_1=randint(0,3)
        score_a=[["minimum", "more", "25%", q1_1], ["minimum", "more", "75%", q3_1], ["maximum", "less", "25%", q3_1], ["maximum", "less", "75%", q1_1]]
        #score_b=[["minimum", "more", "25%", q1_2], ["minimum", "more", "75%", q3_2], ["maximum", "less", "25%", q3_2], ["maximum", "less", "75%", q1_2]]
        min_max=score_a[OC_1][0]
        dir_1=score_a[OC_1][1]
        percent_1=score_a[OC_1][2]
        answer_1=score_a[OC_1][3]
        OC_2=randint(0,1)
        annual=[["first", q1_1], ["third", q3_1]]
        answer2=[[n_1, "25"], [n_1, "75"]]
        quar_2=annual[OC_2][0]
        change_2=annual[OC_2][1]
        number_2=answer2[OC_2][0]
        percent_2=answer2[OC_2][1]
        z_vala=round(random()*(mx-mn)+mn,1)
        ans_4a=round((z_vala-mean(data_1))/std(data_1),2)
    
        IQR=q3_1-q1_1
        
        outliers=[]
        outlierslist=[]

        for i in range(n_1):
            if data_1[i]<q1_1-1.5*IQR or data_1[i]>q3_1+1.5*IQR:
                outliers.append(data_1[i])

        for i in range(len(outliers)):
            entry={
                'x':outliers[i],
            }
            outlierslist.append(entry)
          
        if mean(data_1)>median(data_1):
            answer_5="Skewed Right"
        elif mean(data_1)<median(data_1):
            answer_5="Skewed Left"
        else:
            answer_5="Approximately Symmetric"

        return {
            "data":datalist_1,
            "n_1":n_1,
            "min_max":min_max,
            "dir_1":dir_1,
            "percent_1":percent_1,
            "answer_1":answer_1,
            "quar_2":quar_2,
            "change_2":change_2,
            "number_2":number_2,
            "percent_2":percent_2,
            "za":z_vala,
            "answer4a":ans_4a,
            "mn":mn,
            "Q1":q1_1,
            "med":med_1,
            "Q3":q3_1,
            "mx":mx,
            "IQR":IQR,
            "outliers":outlierslist,
            "answer_5":answer_5,
        }
