class Generator(BaseGenerator):
    def data(self):
            
            
            pvalue=0
    
            n=randint(20,50)
            df=n-1

            htt=randint(0,2)
            T = RealDistribution('t', df)

            scenario=randint(0,4)

            if scenario==0:
                prose="A wildlife biologist wants to study wild turkeys from two different forests.  Out of "
                units=" pounds"
                sample1=" captured turkeys from Forest A, the average weight was "
                sample2=" captured turkeys from Forest B, the average weight was "
                population=" the difference in average weight of turkeys between Forest A and Forest B"
                #success2="find the subject challenging"
                xmin=12
                xmax=33
                smin=1
                smax=5
                mu0t=round(uniform(-1,1),1)
                subjects="turkeys"

            if scenario==1:
                prose="A manufacturer wants to compare the number of defects to types of machines produce.  For a month, machines of both type were observed.  Out of "
                units=" defects"
                sample1=" Model A machines, the average number of defects was "
                sample2=" Model B machines, the average number of defects was "
                population=" the difference in average number of defects between Model A and Model B"
                #success2="find the subject challenging"
                xmin=0.75
                xmax=1.2
                smin=0.25
                smax=0.75
                mu0t=round(uniform(-.2,.2),2)
                subjects="machines"

            if scenario==2:
                prose="A retail chain advertises two different locations using different marketing campaigns, to compare the results.  Out of "
                units=" dollars"
                sample1=" observed days, the daily revenue for Store A was "
                sample2=" observed days, the daily revenue for Store B was "
                population=" the difference in average daily retail between  Store A and Store B"
                #success2="find the subject challenging"
                xmin=800
                xmax=1000
                smin=20
                smax=200
                mu0t=randint(-3,3)*25
                subjects="days"

            if scenario==3:
                prose="A sociologist compares number of daily police stops in two different neighborhoods of the same city with similar size.  Out of "
                units=" stops"
                sample1=" observed days, the daily number of stops for Neighborhood A was "
                sample2=" observed days, the daily number of stops for Neighborhood A was "
                population=" the difference in average daily police stops between  Neighborhood A and Neighborhood B"
                #success2="find the subject challenging"
                xmin=10
                xmax=100
                smin=3
                smax=15
                mu0t=randint(-3,3)*5
                subjects="days"

            if scenario==4:
                prose="A political scientist compares the amount of money donated to campaigns for poltitical parties A and B.  Out of "
                units=" dollars"
                sample1=" observed members of Party A, the average sample donation was "
                sample2=" observed members of Party B, the average sample donation was "
                population=" the difference in average donation between members of Party A and Party B"
                #success2="find the subject challenging"
                xmin=2000
                xmax=3000
                smin=300
                smax=800
                mu0t=randint(-3,3)*50     
                subjects="party members"




            if htt==0:
                ineq="is not equal to"
                ineq2="more extreme"
                ineqsymb="\\neq"
            if htt==1:
                ineq="is greater than"
                ineq2="greater"
                ineqsymb=">"
            if htt==2:
                ineq="is less than"
                ineq2="less than"
                ineqsymb="<"
                
            mu0=choice([0,  0, mu0t])


            s1=round(uniform(smin, smax),3)
            s2=round(uniform(smin, smax),3)
            SE=numerical_approx(sqrt(s1^2/n+s2^2/n))
            xbar1=round(uniform(xmin,xmax),3)

            tempP=uniform(0.01, 0.09)
            if htt==0:
                tempP=tempP/2

            tempT=abs(T.cum_distribution_function_inv(tempP))

            if htt==0:
                diff=round(mu0+tempT*SE*(-1)^randint(0,1),3)
            if htt==1:
                diff=round(mu0+tempT*SE,3)
            if htt==2:
                diff=round(mu0-tempT*SE,3)    

            xbar2=xbar1-diff



            tscore=(diff-mu0)/SE
            if htt==0:
                pvalue=(1-(T.cum_distribution_function(abs(tscore))))*2
            if htt==1:
                pvalue=1-T.cum_distribution_function(tscore)
            if htt==2:
                pvalue=T.cum_distribution_function(tscore)









            CL=choice([95, 95, 99])
            t = T.cum_distribution_function_inv(1-((100-CL)/200))
            LB=numerical_approx(diff-t*SE)
            UB=numerical_approx(diff+t*SE)
            alpha=round(choice([.1,.05,.01]),2)
            claim = "We fail to reject the null hypothesis,"
            conclusion="There is not enough evidence to support the claim that"
            if pvalue<alpha:
                claim="We reject the null hypothesis and accept the alternative hypothesis,"
                conclusion=" We accept the claim that"

            return{
                "n":n,
                "xbar1":xbar1,
                "xbar2":xbar2,
                "s1":s1,
                "s2":s2,
                "mu0":mu0,
                "ineq":ineq,
                "ineq2":ineq2,
                "ineqsymb":ineqsymb,
                "units":units,
                "pvalue":pvalue,
                "prose":prose,
                "sample1":sample1,
                "sample2":sample2,
                "CL":CL,
                #"success2":success2,
                "population":population,
                "SE":SE,
                "tscore":tscore,
                "htt":htt,
                "LB":LB,
                "UB":UB,
                "t":t,
                "subjects":subjects,
                "claim":claim,
                "diff":diff,
                "conclusion":conclusion,
                 "alpha":alpha,

            }
