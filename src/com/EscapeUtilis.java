package com;

import java.util.HashMap;

/**
 * Created by MAHNOOR on 7/17/2020.
 */
public class EscapeUtilis {

    public static String escapeHtml(String inputString) {
        StringBuilder builder = new StringBuilder();
        char[] charArray = inputString.toCharArray();
        for (char nextChar: charArray) {
            String entityName = charMap.get((int) nextChar);
            if (entityName == null) {
                if (nextChar > 0x7F)
                    builder.append("&#")
                            .append(Integer.toString(nextChar, 10))
                            .append(";");
                else
                    builder.append(nextChar);
            }
            else
                builder.append(entityName);
        }
        return builder.toString();
    }

    public static final HashMap<Integer, String> charMap =
            new HashMap<Integer, String>();

    static {
        charMap.put(34, "&quot;");    // double quote
        charMap.put(35, "&#35;");     // hash mark (no HTML named entity)
        charMap.put(38, "&amp;");     // ampersand
        charMap.put(39, "&apos;");    // apostrophe, aka single quote
        charMap.put(60, "&lt;");      // less than
        charMap.put(62, "&gt;");      // greater than
    }

}
