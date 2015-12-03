package com.dempe.zhizus.common.utils;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/**
 * Created with IntelliJ IDEA.
 * User: zhengdaxia
 * Date: 15/1/25
 * Time: 下午12:43
 * To change this template use File | Settings | File Templates.
 */
public class ErrorMsg {


    public static Map<Integer, String> errorMsgMap = new ConcurrentHashMap<Integer, String>();

    public static String get(int status) {
        return errorMsgMap.get(status);
    }
}
