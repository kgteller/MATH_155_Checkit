class Generator(BaseGenerator):
    def data(self):
        sample=randint(2000, 2550)
        result_1=randint(75, 85)
        agree_1=choice(['"Agree" or "Strongly Agree"','"Disagree" or "Strongly Disagree"'])
        if agree_1=='"Disagree" or "Strongly Disagree"':
            result_1=randint(15, 25)
        result_2=randint(75,85)
        agree_2=choice(['"Agree" or "Strongly Agree"','"Disagree" or "Strongly Disagree"'])
        if agree_2=='"Disagree" or "Strongly Disagree"':
            result_2=randint(5, 12)
        language=choice(["Italian", "Chinese", "Russian"])

        out1=randint(0,3)
        study_rand=[["A pharmaceutical company is testing a new drug designed to lower blood pressure. The study involves 200 participants diagnosed with hypertension. Participants are randomly assigned to one of two groups: 100 participants receive the new drug, and 100 receive a placebo. Neither the participants nor the researchers know who receives the drug or placebo (double-blind study). Blood pressure is measured at the start of the study and after eight weeks of treatment."],["A university wants to test whether a structured study plan improves students’ exam scores. A sample of 120 students enrolled in a challenging course is randomly divided into two groups. The experimental group (60 students) follows a structured study plan that includes daily study sessions, while the control group (60 students) studies as they normally would without any additional guidance. Both groups take the same final exam at the end of the semester."],[" Researchers are studying the association between smoking and lung cancer. They collect data from 5,000 adults, some of whom are smokers and some non-smokers. The researchers track the participants over 20 years, recording incidences of lung cancer and other health outcomes. The study does not involve any intervention or manipulation of variables; the researchers simply observe the participants’ smoking habits and health outcomes over time."],["A nutritionist is investigating the relationship between dietary habits and heart disease. The study involves analyzing data from 10,000 people collected through surveys about their eating habits, physical activity, and health status. The researchers look at whether participants who consume a diet high in fruits and vegetables have a lower incidence of heart disease compared to those who consume a diet high in processed foods. The study does not involve any manipulation of the participants’ diets; it simply observes their dietary choices and health outcomes."]]
        study_type_rand=[["Randomized Experiment"],["Randomized Experiment"],["Observational Cohort Study"],["Observational Cross-Sectional-Study"]]
        study=study_rand[out1][0]
        study_type=study_type_rand[out1][0]
        return {
            "sample":sample,
            "result_1":result_1,
            "agree_1":agree_1,
            "result_2":result_2,
            "agree_2":agree_2,
            "language":language,
            "study":study,
            "study_type":study_type,
}