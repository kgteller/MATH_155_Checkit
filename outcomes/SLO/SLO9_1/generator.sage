class Generator(BaseGenerator):
    def data(self):
            
            
            pvalue=0
    
            n=randint(8,12)
            df=n-1

            htt=randint(0,2)
            T = RealDistribution('t', df)

            scenario=randint(0,4)

            if scenario==0:
                prose="A study is conducted comparing the resting heart rate of test subjects before and after taking a trial medication."
                units=" bpm"
                sample=" test subjects"
                sample1="the heart rate of test subjects before taking medication"
                sample2="the heart rate of test subjects after taking medication"
                title1="Heart Rate Before"
                title2="Heart Rate After"
                population=" the average difference in heart rate of patients before and after taking the medication "
                xmin=65
                xmax=75
                dmin=-10
                dmax=10
                smin=5
                smax=10
                sdmin=5
                sdmax=10
                mu0t=round(uniform(-5,5),1)
                

            if scenario==1:
                prose="A company tests two different packagings for their product.  They ask members of a focus group to rate how appealing each packaging for the product is on a scale of 1-10."
                units=" points"
                sample=" focus group members"
                sample1="rating for packaging A"
                sample2="rating for packaging B"
                title1="Packaging A"
                title2="Packaging B"
                population=" the average difference in rating between packaging A and B "
                xmin=4.5
                xmax=5.5
                dmin=-1
                dmax=1
                smin=1
                smax=1.5
                sdmin=1
                sdmax=1.5
                mu0t=round(uniform(0,0),1)

            if scenario==2:
                prose="A study is done comparing the effect of two diets on levels of cholestrol.  Subjects of the study spend 2 weeks on diet A, their cholestrol is measured, then they switch to diet B, and after 2 weeks their cholestrol is measured again."
                units=" mmol/L"
                sample=" subjects"
                sample1="cholestrol level after diet A"
                sample2="cholestrol level after diet B"
                title1="Diet A"
                title2="Diet B"
                population=" the average difference in cholestrol levels between diets A and B "
                xmin=4
                xmax=5
                dmin=-.5
                dmax=.5
                smin=0.8
                smax=1.2
                sdmin=0.1
                sdmax=0.5
                mu0t=round(uniform(-0.5,0.5),1)

            if scenario==3:
                prose="A study is done comparing the average frequency of sightings of an endangered bird species at different sites in a forest before and after a heavy rainstorm."
                units=" sightings/week"
                sample=" sites"
                sample1="rate of sightings before the storm"
                sample2="rate of sightings after the storm"
                title1="Rate of Sightings Before"
                title2="Rate of Sightings After"
                population=" the average difference in rates of sighting before and after the storm "
                xmin=15
                xmax=20
                dmin=-4
                dmax=4
                smin=1
                smax=2.5
                sdmin=0.2
                sdmax=1.5
                mu0t=round(uniform(-2,2),1)

            if scenario==4:
                prose="A professor takes a sampling of their students and compares their scores between the first and second exams."
                units=" points"
                sample=" students"
                sample1="score on Exam A"
                sample2="score on Exam B"
                title1="Exam A"
                title2="Exam B"
                population=" the average difference in scores between the Exams "
                xmin=75
                xmax=80
                dmin=-5
                dmax=5
                smin=3
                smax=7
                sdmin=3
                sdmax=10
                mu0t=round(uniform(-2,2),1)       




            if htt==0:
                ineq="is not equal to"
                ineq2="more extreme"
                ineqsymb="neq"
            if htt==1:
                ineq="is greater than"
                ineq2="greater"
                ineqsymb="gneq"
            if htt==2:
                ineq="is less than"
                ineq2="less than"
                ineqsymb="lneq"

            mu0=choice([0,  0, mu0t])


            sd=uniform(sdmin, sdmax)
            ND=RealDistribution('gaussian', sd)
            TempSE=sd/sqrt(n)

            tempP=uniform(0.01, 0.9)

            tempT=abs(T.cum_distribution_function_inv(tempP))

            if htt==0:
                xbar=round(mu0+tempT*TempSE*(-1)^randint(0,1),3)
            if htt==1:
                xbar=round(mu0+tempT*TempSE,3)
            if htt==2:
                xbar=round(mu0-tempT*TempSE,3)


            if htt==0:
                dmu=uniform(dmin,dmax)
            if htt==1:
                dmu=uniform(dmin,dmax)
            if htt==2:
                dmu=uniform(dmin,dmax)


            Dvec=[round(ND.get_random_element()+xbar,1) for i in range(n)]

            dbar=mean(Dvec)
            s=std(Dvec)

            SE=numerical_approx(s/sqrt(n))
            tscore=(dbar-mu0)/SE
            if htt==0:
                pvalue=(1-(T.cum_distribution_function(abs(tscore))))*2
            if htt==1:
                pvalue=1-T.cum_distribution_function(tscore)
            if htt==2:
                pvalue=T.cum_distribution_function(tscore)
            #else:
            #    dummy=0

            x1mu=uniform(xmin, xmax)
            x1s=uniform(smin, smax)
            NX=RealDistribution('gaussian', x1s)
            X1vec=[round(NX.get_random_element()+x1mu,1) for i in range(n)]
            X2vec=[round(X1vec[i]+Dvec[i],1) for i in range(n)]


            Datalist=[]

            for i in range(n):
                entry={
                    'x1':X1vec[i],
                    'x2':X2vec[i],
                    'd':Dvec[i],
                }
                Datalist.append(entry)


            CL=choice([95, 95, 99])
            t = T.cum_distribution_function_inv(1-((100-CL)/200))
            LB=numerical_approx(dbar-t*SE)
            UB=numerical_approx(dbar+t*SE)
            alpha=round(choice([.1,.05,.01]),2)
            claim = "We fail to reject the null hypothesis,"
            conclusion="There is not enough evidence to support the claim that"
            if pvalue<alpha:
                claim="We reject the null hypothesis and accept the alternative hypothesis,"
                conclusion=" We accept the claim that"




            return{
                "n":n,
                "mu0":mu0,
                "dbar":dbar,
                "s":s,
                "Datalist":Datalist,
                "ineq":ineq,
                "ineq2":ineq2,
                "ineqsymb":ineqsymb,
                "units":units,
                "pvalue":pvalue,
                "prose":prose,
                "sample1":sample1,
                "sample2":sample2,
                "title1":title1,
                "title2":title2,
                "sample":sample,
                "CL":CL,
                #"success2":success2,
                "population":population,
                "SE":SE,
                "tscore":tscore,
                "htt":htt,
                "LB":LB,
                "UB":UB,
                "t":t,
                "claim":claim,
                "conclusion":conclusion,
                "alpha":alpha,

            }
