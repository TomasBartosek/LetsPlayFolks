package cz.upce.diplomovaprace.service;

import cz.upce.diplomovaprace.exception.EntityNotFoundException;
import cz.upce.diplomovaprace.model.GameModel;

import java.util.List;

public interface GameService {

    GameModel prepareGameModel(Integer gameId) throws EntityNotFoundException;

    List<GameModel> prepareGameModels() throws EntityNotFoundException;

    void createGame(GameModel gameModel) throws EntityNotFoundException;

    void approveGame(GameModel gameModel) throws EntityNotFoundException;
}
