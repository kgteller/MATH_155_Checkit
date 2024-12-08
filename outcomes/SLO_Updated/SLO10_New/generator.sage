class Generator(BaseGenerator):
    def data(self):
            
            
            ND=RealDistribution('gaussian', 1)
    
            ineqt=randint(0,1)

            ineq1="leq"
            ineq2="geq"


            z1=round(uniform(-3,3),2)
            z2=round(uniform(-3,1),2)
            z3=round(uniform(z2+0.25,3),2)
            P3=round(uniform(0.2,0.99),2)
            P4=round(uniform(0.2,0.99),2)

            P1=ND.cum_distribution_function(z1)
            P2=ND.cum_distribution_function(z3)-ND.cum_distribution_function(z2)

            z4=ND.cum_distribution_function_inv(1-P3)
            z5=ND.cum_distribution_function_inv((P4+1)/2)


            if ineqt==0:
                ineq1="geq"
                ineq2="leq"
                P1=1-P1
                z4=-1*z4







            return{
                "z1":z1,
                "z2":z2,
                "z3":z3,
                "z4":z4,
                "z5":z5,
                "P1":P1,
                "P2":P2,
                "P3":P3,
                "P4":P4,
                "ineq1":ineq1,
                "ineq2":ineq2,






            }
