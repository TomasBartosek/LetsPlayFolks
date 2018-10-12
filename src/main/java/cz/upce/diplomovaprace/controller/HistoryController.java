package cz.upce.diplomovaprace.controller;

import cz.upce.diplomovaprace.enums.ActiveTabConstants;
import cz.upce.diplomovaprace.repository.ChallengeDao;
import cz.upce.diplomovaprace.repository.UserDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import java.util.Map;

@Controller
@SessionAttributes(ActiveTabConstants.ACTIVE_TAB)
public class HistoryController {

    @Autowired
    ChallengeDao challengeDao;

    @Autowired
    UserDao userDao;

    @GetMapping("/history")
    public ModelAndView renderMap(Map<String, Object> model) {
        model.put("challenges", challengeDao.findChallengeByUserByChallengerUserId(userDao.findById(1)));
        model.put(ActiveTabConstants.ACTIVE_TAB, ActiveTabConstants.HISTORY);
        return new ModelAndView("history", model);
    }
}
