package com;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/**
 * Created by mano on 4/18/2020.
 */
public class Messages {

    private static final Messages singleton = new Messages();
    private List<String> list = new ArrayList<String>();

    public static Messages getInstance() {
        return singleton;
    }

    private Messages() {
    }

    public void add(String s) {
        list.add(s);
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();

        Collections.reverse(list);
        for (String s : list)
            sb.append("<br>").append(s);

        return sb.toString();
    }

}
