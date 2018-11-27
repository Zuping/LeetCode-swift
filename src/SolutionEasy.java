import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class SolutionEasy {
    public static void main(String[] args) {
        SolutionEasy solution = new SolutionEasy();
//        solution.findCelebrity(2);

        solution.findMaxAverage(new int[]{5}, 1);

        solution.partitionLabels("ababcbacadefegdehijhklij");
    }

    // 277. Find the Celebrity
    boolean knows(int a, int b) { return true; }
    public int findCelebrity(int n) {
        Set<Integer> set = new HashSet<>();
        for (int i = 0; i < n; i++) {
            for (int j = 0; j < n; j++) {
                if (i == j) { continue; }
                if (set.contains(i)) continue;
                if (knows(i, j) || !knows(j, i)) {
                    set.add(i);
                    break;
                }  else {
                    set.add(j);
                }
            }
            if (!set.contains(i)) {
                return i;
            }
        }
        return -1;
    }

    // 643. Maximum Average Subarray
    public double findMaxAverage(int[] nums, int k) {
        int[] sum = new int[nums.length];
        sum[0] = nums[0];
        for (int i = 1; i < nums.length; i++)
            sum[i] = sum[i - 1] + nums[i];
        double res = sum[k - 1] * 1.0 / k;
        for (int i = k; i < nums.length; i++) {
            res = Math.max(res, (sum[i] - sum[i - k]) * 1.0 / k);
        }
        return res;
    }

    // you need treat n as an unsigned value
    public int reverseBits(int n) {
        int res = 0;
        for (int i = 31; i >=0; i--) {
            if ((n & 1 << i) != 0) {
                res |= 1 << (31 - i);
            }
        }
        return res;
    }

    public List<Integer> partitionLabels(String S) {
        int[] last = new int[26];
        for (int i = 0; i < S.length(); ++i)
            last[S.charAt(i) - 'a'] = i;

        int j = 0, anchor = 0;
        List<Integer> ans = new ArrayList();
        for (int i = 0; i < S.length(); ++i) {
            j = Math.max(j, last[S.charAt(i) - 'a']);
            if (i == j) {
                ans.add(i - anchor + 1);
                anchor = i + 1;
            }
        }
        return ans;
    }

    // 160. Intersection of Two Linked Lists
    public ListNode getIntersectionNode(ListNode headA, ListNode headB) {
        ListNode p1 = headA, p2 = headB;
        int cnt = 0;
        while (p1 != null && p2 != null && cnt < 3) {
            if (p1 == p2) { return p1; }
            p1 = p1.next;
            if (p1 == null) {
                p1 = headB;
                cnt++;
            }
            p2 = p2.next;
            if (p2 == null) {
                p2 = headA;
                cnt++;
            }
        }
        return null;
    }
}
