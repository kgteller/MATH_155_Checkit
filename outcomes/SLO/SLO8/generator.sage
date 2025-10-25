import numpy as np
from scipy import stats
class Generator(BaseGenerator):

    def data(self):
        p=0
        val1=np.sort(sample(range(-10,10),5))
        val2=np.sort(sample(range(-10,10),5))
        val3=np.sort(sample(range(-10,10),5))
        x1=val1[0]
        x2=val1[1]
        x3=val1[2]
        x4=val1[3]
        x5=val1[4]
        x6=val2[0]
        x7=val2[1]
        x8=val2[2]
        x9=val2[3]
        x10=val2[4]
        x11=val3[0]
        x12=val3[1]
        x13=val3[2]
        x14=val3[3]
        x15=val3[4]
       
        up1=round(randint(-5,-1)/100,2)
        up2=round(randint(1,5)/100,2)
        up=choice([up1,up2])
        while p != 1:
            test=np.random.uniform(.01,.9,size=5)


            x=np.round(test,1)/sum(np.round(test,1))

            x_rnd=np.round(x,2)

            p=np.sum(x_rnd)

            if np.all(x_rnd)==0:
                p=0

        c1=randint(0,5)
        c2=randint(0,4)
        c3=randint(0,4)
        x_rnd_neg=np.copy(x_rnd)
        x_rnd_up=np.copy(x_rnd)
        x_rnd_neg[c2]=-x_rnd_neg[c2]
        x_rnd_up[c3]=round(x_rnd_up[c3]+up,2)
        if (c1==0):
            data1_1=x_rnd[0]
            data1_2=x_rnd[1]
            data1_3=x_rnd[2]
            data1_4=x_rnd[3]
            data1_5=x_rnd[4]
        
            data2_1=x_rnd_neg[0]
            data2_2=x_rnd_neg[1]
            data2_3=x_rnd_neg[2]
            data2_4=x_rnd_neg[3]
            data2_5=x_rnd_neg[4]

            data3_1=x_rnd_up[0]
            data3_2=x_rnd_up[1]
            data3_3=x_rnd_up[2]
            data3_4=x_rnd_up[3]
            data3_5=x_rnd_up[4]

            ans1='First distribution'
            ans2_1= round(np.sum(x_rnd*val1),2)
            variance=np.sum(((val1-ans2_1)**2)*x_rnd)
            std=sqrt(variance)
            ans2_2=round(std,2)

        elif (c1==1):
            data1_1=x_rnd[0]
            data1_2=x_rnd[1]
            data1_3=x_rnd[2]
            data1_4=x_rnd[3]
            data1_5=x_rnd[4]
        
            data3_1=x_rnd_neg[0]
            data3_2=x_rnd_neg[1]
            data3_3=x_rnd_neg[2]
            data3_4=x_rnd_neg[3]
            data3_5=x_rnd_neg[4]

            data2_1=x_rnd_up[0]
            data2_2=x_rnd_up[1]
            data2_3=x_rnd_up[2]
            data2_4=x_rnd_up[3]
            data2_5=x_rnd_up[4]

            ans1='First distribution'
            ans2_1= round(np.sum(x_rnd*val1),2)
            variance=np.sum(((val1-ans2_1)**2)*x_rnd)
            std=sqrt(variance)
            ans2_2=round(std,2)

        elif (c1==2):
            data2_1=x_rnd[0]
            data2_2=x_rnd[1]
            data2_3=x_rnd[2]
            data2_4=x_rnd[3]
            data2_5=x_rnd[4]
        
            data1_1=x_rnd_neg[0]
            data1_2=x_rnd_neg[1]
            data1_3=x_rnd_neg[2]
            data1_4=x_rnd_neg[3]
            data1_5=x_rnd_neg[4]

            data3_1=x_rnd_up[0]
            data3_2=x_rnd_up[1]
            data3_3=x_rnd_up[2]
            data3_4=x_rnd_up[3]
            data3_5=x_rnd_up[4]

            ans1='Second distribution'
            ans2_1= round(np.sum(x_rnd*val2),2)
            variance=np.sum(((val2-ans2_1)**2)*x_rnd)
            std=sqrt(variance)
            ans2_2=round(std,2)

        elif  (c1==3):
            data2_1=x_rnd[0]
            data2_2=x_rnd[1]
            data2_3=x_rnd[2]
            data2_4=x_rnd[3]
            data2_5=x_rnd[4]
        
            data3_1=x_rnd_neg[0]
            data3_2=x_rnd_neg[1]
            data3_3=x_rnd_neg[2]
            data3_4=x_rnd_neg[3]
            data3_5=x_rnd_neg[4]

            data1_1=x_rnd_up[0]
            data1_2=x_rnd_up[1]
            data1_3=x_rnd_up[2]
            data1_4=x_rnd_up[3]
            data1_5=x_rnd_up[4]

            ans1='Second distribution'
            ans2_1= round(np.sum(x_rnd*val2),2)
            variance=np.sum(((val3-ans2_1)**2)*x_rnd)
            std=sqrt(variance)
            ans2_2=round(std,2)


        elif (c1==4):
            data3_1=x_rnd[0]
            data3_2=x_rnd[1]
            data3_3=x_rnd[2]
            data3_4=x_rnd[3]
            data3_5=x_rnd[4]
        
            data1_1=x_rnd_neg[0]
            data1_2=x_rnd_neg[1]
            data1_3=x_rnd_neg[2]
            data1_4=x_rnd_neg[3]
            data1_5=x_rnd_neg[4]

            data2_1=x_rnd_up[0]
            data2_2=x_rnd_up[1]
            data2_3=x_rnd_up[2]
            data2_4=x_rnd_up[3]
            data2_5=x_rnd_up[4]

            ans1='Third distribution'
            ans2_1= round(np.sum(x_rnd*val3),2)
            variance=np.sum(((val2-ans2_1)**2)*x_rnd)
            std=sqrt(variance)
            ans2_2=round(std,2)

        else:
            data3_1=x_rnd[0]
            data3_2=x_rnd[1]
            data3_3=x_rnd[2]
            data3_4=x_rnd[3]
            data3_5=x_rnd[4]
        
            data2_1=x_rnd_neg[0]
            data2_2=x_rnd_neg[1]
            data2_3=x_rnd_neg[2]
            data2_4=x_rnd_neg[3]
            data2_5=x_rnd_neg[4]

            data1_1=x_rnd_up[0]
            data1_2=x_rnd_up[1]
            data1_3=x_rnd_up[2]
            data1_4=x_rnd_up[3]
            data1_5=x_rnd_up[4]


            ans1='Third distribution'
            ans2_1= round(np.sum(x_rnd*val3),2)
            variance=np.sum(((val3-ans2_1)**2)*x_rnd)
            std=sqrt(variance)
            ans2_2=round(std,2)
        k=0
        
        ch=randint(0,4)
        n=randint(10,100)
        percent=randint(5,85)
        c5=randint(3,6)
        if ch==0:
            pcent=.50
        elif ch==3:
            pcent=1/c5
        else: 
            pcent=percent/100

        statement=choice(["at most","at least","exactly"])
        mu=n*pcent
        mu_rnd=round(n*pcent,0)
        sigma=sqrt(mu*(1-pcent))
        sigma_rnd=round(sigma,0)
        c4=randint(mu_rnd-2*sigma_rnd,mu_rnd+2*sigma_rnd)
        if statement=="exactly": 
            prob=stats.binom.pmf(c4,n,pcent)
        elif statement== "at least":
            prob=sum(stats.binom.pmf(range(c4,n+1),n,pcent))
        else:
            prob=sum(stats.binom.pmf(range(0,c4+1),n,pcent))

       
        scenario=[ [ "a coin is flipped {} times. Let X be the number of heads observed. Find the probability of getting {} {} head(s).".format(n,statement,c4)],[ "in a factory, a batch of {} products is inspected. Each product has a {}% chance of being defective. Let X be the number of defective products. Find the probability of getting {} {} defective product(s).".format(n,percent,statement,c4)],[ "A survey is conducted where {} people are asked if they prefer a certain brand over another. Each response has a {}% chance of getting a yes response. Let X be the number of yes responses. Find the probability of getting {} {} yes response(s).".format(n,percent,statement,c4)],["A multiple-choice exam consists of {} questions, each with {} possible answers (only one of which is correct). Let X be the number of correct answers from a student who guesses on each question. Find the probability of the student getting {} {} questions(s) correct.".format(n,c5,statement,c4)],[ "An email filter is designed to detect spam with a {}% success rate. Out of {} emails, let X be the number of emails identified correctly as spam. Find the probability of getting {} {} email(s) correctly identified as spam.".format(percent,n,statement,c4)]] 
        scn=scenario[ch][0]
        #scenario=[[ "a coin is flipped {} times. Let X be the number of heads observed. Find the probability of geting {} {} head(s).".format(n,statement,c4), "in a factory, a batch of {} products is inspected. Each product has a {}% chance of being defective. Let X be the number of defective products. Find the probability of geting {} {} defective product(s).".format(n,percent,statement,c4), "A survey is conducted where {} people are asked if they prefer a certain brand over another. Each response has a {}% chance of getting a yes response.Let X be the number of yes responses. Find the probability of geting {} {} yes respons(es).".format(n,percent,statement,c4),"A multiple-choice exam consists of {} questions, each with {} possible answers (only one of which is correct). Let X be the number of correct answers from a student who guesses on each question. Find the probability of the student geting {} {} questions(s) correct.".format(n,c5,statement,c4), "An email filter is designed to detect spam with a {}% success rate. Out of {} emails, let X be the number of emails identified correctly as spam. Find the probability of geting {} {} email(s) corectly idnetified as spam.".format(percent,n,statement,c4)]]  
        ans3=prob
        ans4_1=round(mu,2)
        ans4_2=round(sigma,2)
    

        return {
            "d1":data1_1,
            "d2":data1_2,
            "d3":data1_3,
            "d4":data1_4,
            "d5":data1_5,
            "d6":data2_1,
            "d7":data2_2,
            "d8":data2_3,
            "d9":data2_4,
            "d10":data2_5,
            "d11":data3_1,
            "d12":data3_2,
            "d13":data3_3,
            "d14":data3_4,
            "d15":data3_5,
            "answer_1":ans1,
            "x1":x1,
            "x2":x2,
            "x3":x3,
            "x4":x4,
            "x5":x5,
            "x6":x6,
            "x7":x7,
            "x8":x8,
            "x9":x9,
            "x10":x10,
            "x11":x11,
            "x12":x12,
            "x13":x13,
            "x14":x14,
            "x15":x15,
            "answer_2a":ans2_1,
            "answer_2b":ans2_2,
            "scenario":scn,
            "answer_3":ans3,
            "answer_4a":ans4_1,
            "answer_4b":ans4_2,












    }