package com.dempe.zhizus.utils;

import com.alibaba.fastjson.JSONObject;

/**
 * Created with IntelliJ IDEA.
 * User: zhengdaxia
 * Date: 15/1/25
 * Time: 下午12:42
 * To change this template use File | Settings | File Templates.
 */
public class JSONResult  extends JSONObject {

    public static JSONResult getResult() {
        JSONResult result = new JSONResult();
        result.put("status", 200);
        return result;
    }

    public JSONResult putErrorStatus(int status) {
        put("status", status);
        put("message", ErrorMsg.get(status));
        return this;
    }

    public JSONResult putResult(Object result) {
        put("result", result);
        return this;
    }

    public JSONResult putTotal(long total) {
        put("total", total);
        return this;
    }
}