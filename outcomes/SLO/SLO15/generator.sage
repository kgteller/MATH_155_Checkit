class Generator(BaseGenerator):
    def data(self):
            import numpy
            import scipy
            from scipy import stats


            scenario=randint(0,4)

            if scenario==0:
                prose="A study is conducted comparing the age of children to their Forced Exhalation Volume (FEV) (in liters), in order to see the impact on age on lung function.  Children of different ages have their FEV tested by physicians."
                explanatory="Age"
                response="FEV"
                Eunit="years"
                Runit="liters"
                n=randint(15,25)
                m=uniform(0.24, 0.28)
                b=uniform(0.011, 0.012)
                Xlist=[]
                Ylist=[]
                T = RealDistribution('gaussian', 0.25)
                for i in range(n):
                    x=randint(6,10)
                    y=round(m*x+T.get_random_element()+b,2)
                    Xlist.append(x)
                    Ylist.append(y)


            if scenario==1:
                prose="A study is conducted comparing the weight of a species of bird (in grams) to it's (in mm).  Birds of this species are captured, their dimensions recorded and released."
                explanatory="Weight"
                response="Wingspan"
                Eunit="grams"
                Runit="mm"
                n=randint(15,25)
                m=uniform(0.4, 0.5)
                b=uniform(1, 1.5)
                Xlist=[]
                Ylist=[]
                T = RealDistribution('gaussian', 0.8)
                for i in range(n):
                    x=round(uniform(8,18),2)
                    y=round(m*x+T.get_random_element()+b,2)
                    Xlist.append(x)
                    Ylist.append(y)

            if scenario==2:
                prose="A business compares the amount it spends on advertising (thousands of dollars per month) to it's revenues (thousands of dollars per month) over it's last few months."
                explanatory="Advertising Expense"
                response="Revenue"
                Eunit="k dollars/month"
                Runit="k dollars/month"
                n=randint(15,25)
                m=uniform(50, 80)
                b=uniform(10, 15)
                Xlist=[]
                Ylist=[]
                T = RealDistribution('gaussian', 60)
                for i in range(n):
                    x=round(uniform(2,5),1)
                    y=round(m*x+T.get_random_element()+b,1)
                    Xlist.append(x)
                    Ylist.append(y)


            if scenario==3:
                prose="A study is done comparing windchill in a city (in F), compared to windspeed (in mph) on different days."
                explanatory="Windspeed"
                response="Windchill"
                Eunit="mph"
                Runit="F"
                n=randint(15,25)
                m=uniform(-1.3, -1.2)
                b=uniform(15, 20)
                Xlist=[]
                Ylist=[]
                T = RealDistribution('gaussian', 3)
                for i in range(n):
                    x=round(uniform(5,20),1)
                    y=round(m*x+T.get_random_element()+b,1)
                    Xlist.append(x)
                    Ylist.append(y)        

            if scenario==4:
                prose="A professor observes how many cups of coffee they drink in a day, compared to how many hours of sleep they get that night."
                explanatory="Coffee Consumption"
                response="Sleep"
                Eunit="cups"
                Runit="hours"
                n=randint(15,25)
                m=uniform(-0.6, -0.4)
                b=uniform(7, 8)
                Xlist=[]
                Ylist=[]
                T = RealDistribution('gaussian', 1)
                for i in range(n):
                    x=randint(0,4)
                    y=round(m*x+T.get_random_element()+b,1)
                    Xlist.append(x)
                    Ylist.append(y) 





            Datalist=[]

            for i in range(n):
                entry={
                    'x':Xlist[i],
                    'y':Ylist[i],
                }
                Datalist.append(entry)

            mx=numpy.mean(Xlist)
            my=numpy.mean(Ylist)

            SSx=0
            SSy=0

            for i in range(n):
                SSx=SSx+(Xlist[i]-mx)^2
                SSy=SSy+(Ylist[i]-my)^2

            SSx=SSx*1.0
            SSy=SSy*1.0

            sx=(SSx/(n-1)*1.0)^(1/2)
            sy=(SSy/(n-1)*1.0)^(1/2)

            R=0

            for i in range(n):
                R=R+(Xlist[i]-mx)*(Ylist[i]-my)/(sx*sy)

            R=round(R/(n-1),10)
            Rsquare=R^2
            perc=Rsquare*100

            if R<0:
                ans3="Negative Linear Relationship"
            else:
                ans3="Positive Linear Relationship"






            return{
                "Datalist":Datalist,
                "explanatory":explanatory,
                "response":response,
                "Eunit":Eunit,
                "Runit":Runit,
                "prose":prose,
                "R":R,
                "Rsquare":Rsquare,
                "perc":perc,
                "ans3":ans3






            }
