class Generator(BaseGenerator):
    def data(self):
        out=randint(0,3)
        out2=randint(0,5)
        sample=randint(1275, 2000)
        sample_phrase_opt=[["The poll was conducted in front of the local mall."],["The poll was conducted by calling every fifth person in a phone book listing."],["The poll surveyed an equal number of randomly selected men and women."],["The pollsters randomly chose five neighborhoods and asked all residents of each neighborhood."],["The poll was posted as an ad on Facebook with a callback number for people who chose to respond."],["The poll was conducted from randomly generated phone numbers."]]
        result_opt=[[randint(35,50)], [randint(30, 45)], [randint(25, 40)], [randint(15, 30)]]
        outcome_opt=[["of registered Republicans say the most urgent issue facing the country today is inflation."],["of registered Democrats say the most urgent issue facing the country today is inflation."], ["of registered Independents say the most urgent issue facing the country today is inflation."], ["of registered Democrats say the most urgent issue facing the country today is gun violence."], ["of registered Independents say the most urgent issue facing the country today is gun violence."], ["of registered Republicans say the most urgent issue facing the country today is immigration."], [" of registered Democrats say the most urgent issue facing the country today is protecting our election laws."]]
        sample_type_opt=[["Sample of Convenience"],["Systematic"],["Stratified"],["Cluster"],["Voluntary Response"],["Simple Random"]]
        result=result_opt[out][0]
        outcome=outcome_opt[out][0]
        sample_phrase=sample_phrase_opt[out2][0]
        Sample_type=sample_type_opt[out2][0]
        return {
            "sample":sample,
            "result":result,
            "outcome":outcome,
            "sample_phrase":sample_phrase,
            "sample_type":Sample_type,
        }