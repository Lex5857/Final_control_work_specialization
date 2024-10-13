package view.commands;

import view.ConsoleUI;

public class GetAnimalsListInfo extends Command {
    public GetAnimalsListInfo(ConsoleUI consoleUI) {
        super("Получить список животных", consoleUI);
    }

    @Override
    public void execute(){
        getConsoleUI().getAnimalsListInfo();
    }
}
