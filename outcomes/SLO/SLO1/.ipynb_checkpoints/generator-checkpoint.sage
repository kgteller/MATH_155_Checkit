class Generator(BaseGenerator):
    def data(self):
        out=randint(0,3)
        sample=randint(1275, 2000)
        sample_phrase_opt=[["The poll was conducted in fromt of the local mall."]]
        result_opt=[[randint(35,50)], [randint(30, 45)], [randint(25, 40)], [randint(15, 30)]]
        outcome_opt=[["approve of President Biden’s handling of the response to the coronavirus."],[ "approve of President Biden’s handling of the response to Russia’s invasion of Ukraine."], ["approve of President Biden’s handling of gun violence."], ["approve of President Biden’s handling of the economy."]]
        result=result_opt[out][0]
        outcome=outcome_opt[out][0]
        sample_phrase=sample_phrase_opt[0][0]
        return {
            "sample":sample,
            "result":result,
            "outcome":outcome,
            "sample_phrase":sample_phrase,
        }