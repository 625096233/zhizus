package com.dempe.zhizus.common.utils;

import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;

/**
 * 监控策略
 * User: Dempe
 * Date: 2015/1/26
 * Time: 15:58
 * To change this template use File | Settings | File Templates.
 */
public class MonitorStrategy {
    private String name;
    private int limit;
    private int interval;

    public String getName() {
        return name;
    }

    public int getLimit() {
        return limit;
    }

    public int getInterval() {
        return interval;
    }


    /**
     * 控制在interval的时间内，发生达到limit次数后，才会上报。
     *
     * @param limit    报警频率上限。假如limit为1或者小于1，则只要发生就会被上报。
     * @param interval 时间间隔，毫秒为单位。假如interval小于0，则默认为0，只要发生都会被上报。
     */
    public MonitorStrategy(int limit, int interval) {
        if (limit < 1 || interval < 0) {
            limit = 1;
            interval = 0;
        }
        this.limit = limit;
        this.interval = interval;
        hitTimes = new LimitQueue<Long>(limit);
    }

    public MonitorStrategy(String name, int limit, int interval) {
        if (limit < 1 || interval < 0) {
            limit = 1;
            interval = 0;
        }
        this.name = name;
        this.limit = limit;
        this.interval = interval;
        hitTimes = new LimitQueue<Long>(limit);
    }

    public static MonitorStrategy getInstance(String id) {
        return strategies.get(id);
    }

    private static HashMap<String, MonitorStrategy> strategies = new HashMap<String, MonitorStrategy>();

    public static void addStrategyInstance(String id, MonitorStrategy strategy) throws Exception {
        strategies.put(id, strategy);
    }

    /**
     * 添加一次尝试发送，返回是否应该发送警报
     *
     * @return 是否应该发送警报
     */
    public boolean addHit() {
        long now = System.currentTimeMillis();
        hitTimes.add(now);
        if (limit == hitTimes.size()) {
            if (now - hitTimes.peek() <= interval) {
                hitTimes.clear();
                return true;
            }
        }
        return false;
    }

    private LimitQueue<Long> hitTimes;

}


class LimitQueue<E> implements Queue<E> {
    //队列长度
    private int limit;

    Queue<E> queue = new ConcurrentLinkedQueue<E>();

    public LimitQueue(int limit) {
        this.limit = limit;
    }

    /**
     * 入队
     *
     * @param e
     */
    @Override
    public boolean offer(E e) {
        if (queue.size() >= limit) {
            //如果超出长度,入队时,先出队
            queue.poll();
        }
        return queue.offer(e);
    }

    /**
     * 出队
     *
     * @return
     */
    @Override
    public E poll() {
        return queue.poll();
    }

    /**
     * 获取队列
     *
     * @return
     */
    public Queue<E> getQueue() {
        return queue;
    }

    /**
     * 获取限制大小
     *
     * @return
     */
    public int getLimit() {
        return limit;
    }

    @Override
    public boolean add(E e) {
        return queue.add(e);
    }

    @Override
    public E element() {
        return queue.element();
    }

    @Override
    public E peek() {
        return queue.peek();
    }

    @Override
    public boolean isEmpty() {
        return queue.size() == 0 ? true : false;
    }

    @Override
    public int size() {
        return queue.size();
    }

    @Override
    public E remove() {
        return queue.remove();
    }

    @Override
    public boolean addAll(Collection<? extends E> c) {
        return queue.addAll(c);
    }

    @Override
    public void clear() {
        queue.clear();
    }

    @Override
    public boolean contains(Object o) {
        return queue.contains(o);
    }

    @Override
    public boolean containsAll(Collection<?> c) {
        return queue.containsAll(c);
    }

    @Override
    public Iterator<E> iterator() {
        return queue.iterator();
    }

    @Override
    public boolean remove(Object o) {
        return queue.remove(o);
    }

    @Override
    public boolean removeAll(Collection<?> c) {
        return queue.removeAll(c);
    }

    @Override
    public boolean retainAll(Collection<?> c) {
        return queue.retainAll(c);
    }

    @Override
    public Object[] toArray() {
        return queue.toArray();
    }

    @Override
    public <T> T[] toArray(T[] a) {
        return queue.toArray(a);
    }
}

