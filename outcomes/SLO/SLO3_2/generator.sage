class Generator(BaseGenerator):
    def data(self):
        graph_2=choice(["scatter plot", "histogram", "pie chart"])
        answer_2="No, there is only one numerical variable"
        if graph_2=="histogram":
            answer_2="No, histograms do not show change over time"
        if graph_2=="pie chart":
            answer_2="No, there are two variables, time and percent change"
        cost_4=choice(["housing","education","health care"])
        answer_4="50"
        if cost_4=="education":
            answer_4="80"
        if cost_4=="health care":
            answer_4="35"
        

        return {
            "graph_2":graph_2,
            "answer_2":answer_2,
            "cost_4":cost_4,
            "answer_4":answer_4,
        }
