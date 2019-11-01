require "tty-prompt"

prompt = TTY::Prompt.new
choices = ["vodka", "beer", "wine", "whisky", "bourbon"]
answer = prompt.multi_select("Select drinks?", choices)

pp answer
