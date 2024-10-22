class Generator(BaseGenerator):
    def data(self):
        sample=randint(750, 889)
        result_1=randint(75, 85)
        agree_1=choice(['"Agree" or "Strongly Agree"','"Disagree" or "Strongly Disagree"'])
        if agree_1=='"Disagree" or "Strongly Disagree"':
            result_1=randint(5, 15)
        result_2=randint(68,79)
        agree_2=choice(['"Agree" or "Strongly Agree"','"Disagree" or "Strongly Disagree"'])
        if agree_2=='"Disagree" or "Strongly Disagree"':
            result_2=randint(12, 19)

        out1=randint(0,1)
        study_rand=[["An agricultural scientist wants to determine the effect of fertilizer type on the yield of carrot. There are five types of fertilizer under consideration. She plants tomatoes on five plots of land. Each plot is treated identically except for receiving a different type of fertilizer."],["A scientist wants to determine whether people who live in places with high levels of air pollution have more coughs than people in areas with little air pollution. During the winter months, she tracks the sales of cough medication in randomly selected neighborhoods with high or low levels of pollution."]]
        study_type_rand=[["Randomized Experiment"],["Observational Study"]]
        study=study_rand[out1][0]
        study_type=study_type_rand[out1][0]
        return {
            "sample":sample,
            "result_1":result_1,
            "agree_1":agree_1,
            "result_2":result_2,
            "agree_2":agree_2,
            "study":study,
            "study_type":study_type,
        }
