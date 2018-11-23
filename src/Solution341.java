import java.util.*;

public class Solution341 {
}


// This is the interface that allows for creating nested lists.
// You should not implement it, or speculate about its implementation
interface NestedInteger {

    // @return true if this NestedInteger holds a single integer, rather than a nested list.
    public boolean isInteger();

    // @return the single integer that this NestedInteger holds, if it holds a single integer
    // Return null if this NestedInteger holds a nested list
    public Integer getInteger();

    // @return the nested list that this NestedInteger holds, if it holds a nested list
    // Return null if this NestedInteger holds a single integer
    public List<NestedInteger> getList();
}


class NestedIterator implements Iterator<Integer> {

    private Queue<Integer> queue = new LinkedList<>();
    public NestedIterator(List<NestedInteger> nestedList) {
        for (NestedInteger tmp : nestedList) {
            flattenHelper(tmp, queue);
        }
    }

    private void flattenHelper(NestedInteger nestedInteger, Queue<Integer> queue) {
        if (nestedInteger.isInteger()) {
            queue.add(nestedInteger.getInteger());
        } else {
            for (NestedInteger tmp : nestedInteger.getList()) {
                flattenHelper(tmp, queue);
            }
        }
    }

    @Override
    public Integer next() {
        return queue.poll();
    }

    @Override
    public boolean hasNext() {
        return !queue.isEmpty();
    }
}
