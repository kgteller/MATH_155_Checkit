class Generator(BaseGenerator):
    def data(self):
            import numpy
            import scipy
            from scipy import stats


            scenario=randint(0,4)
        
            if scenario==0:
                prose="A study is conducted comparing the age of adults to their glucose level (in mg/dL)."
                explanatory="Age"
                response="Glucose Level"
                Eunit="years"
                Runit="mg/dL"
                n=randint(15,25)
                m=uniform(0.35, 0.4)
                b=uniform(63, 67)
                Xlist=[]
                Ylist=[]
                T = RealDistribution('gaussian', 3)
                for i in range(n):
                    x=randint(20, 65)
                    y=round(m*x+T.get_random_element()+b,1)
                    Xlist.append(x)
                    Ylist.append(y)
                x1=randint(20, 65)
                y2=round(randint(20, 65)*m+b,1)
                sample="an adult"


            if scenario==1:
                prose="A survey is conducted comparing different homes electricity usage (in kilowatt hours), and their electric bills (dollars) within a city."
                explanatory="Electricity Usage"
                response="Electric Bill"
                Eunit="kilowatt hours"
                Runit="dollars"
                n=randint(15,25)
                m=uniform(0.14, 0.15)
                b=uniform(9.6, 10)
                Xlist=[]
                Ylist=[]
                T = RealDistribution('gaussian', 2)
                for i in range(n):
                    x=round(uniform(150,300),2)
                    y=round(m*x+T.get_random_element()+b,2)
                    Xlist.append(x)
                    Ylist.append(y)
                x1=round(uniform(150, 300),2)
                y2=round(uniform(150, 300)*m+b,2)
                sample="a household"    

            if scenario==2:
                prose="A study is conducted examining how far a car has driven (in thousands of miles) compared to how expensive the annual maintenance costs are."
                explanatory="Distance Driven"
                response="Maintenance Cost"
                Eunit="thousand miles"
                Runit="dollars"
                n=randint(15,25)
                m=uniform(25, 35)
                b=uniform(0.045, 0.065)
                Xlist=[]
                Ylist=[]
                T = RealDistribution('gaussian', 100)
                for i in range(n):
                    x=round(uniform(15,30),2)
                    y=round(m*x+T.get_random_element()+b,2)
                    Xlist.append(x)
                    Ylist.append(y)
                x1=round(uniform(15, 30),2)
                y2=round(uniform(15, 30)*m+b,2)
                sample="a car" 


            if scenario==3:
                prose="A study is conducted examining adult BMI (in kg/m^2) compared to HDL Cholesterol (in mg/DL)."
                explanatory="BMI"
                response="HDL Cholesterol"
                Eunit="kg/(m squared)"
                Runit="mg/DL"
                n=randint(15,25)
                m=uniform(-2.4, -2.3)
                b=uniform(110, 112)
                Xlist=[]
                Ylist=[]
                T = RealDistribution('gaussian', 3)
                for i in range(n):
                    x=round(uniform(20,35),2)
                    y=round(m*x+T.get_random_element()+b,2)
                    Xlist.append(x)
                    Ylist.append(y)
                x1=round(uniform(20, 35),2)
                y2=round(uniform(20, 35)*m+b,2)
                sample="an adult"     

            if scenario==4:
                prose="A cafe compares the temperature during the day (in F) to the number of cups of coffee they sale."
                explanatory="Temperature"
                response="Coffee Sold"
                Eunit="F"
                Runit="Cups"
                n=randint(15,25)
                m=uniform(-.4, -.35)
                b=uniform(40, 50)
                Xlist=[]
                Ylist=[]
                T = RealDistribution('gaussian', 6)
                for i in range(n):
                    x=round(uniform(20,90))
                    y=round(m*x+T.get_random_element()+b)
                    Xlist.append(x)
                    Ylist.append(y)
                x1=round(uniform(20, 90))
                y2=round(uniform(20, 90)*m+b)
                sample="a day"





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

            B1=round((sy/sx)*R,15)
            B0=round(my-B1*mx,15)

            y1=B1*x1+B0
            x2=(y2-B0)/B1





            return{
                "Datalist":Datalist,
                "explanatory":explanatory,
                "response":response,
                "Eunit":Eunit,
                "Runit":Runit,
                "prose":prose,
                "x1":x1,
                "x2":x2,
                "y1":y1,
                "y2":y2,
                "B0":B0,
                "B1":B1,
                "sample":sample,






            }
