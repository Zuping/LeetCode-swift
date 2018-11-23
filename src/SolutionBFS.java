import java.util.*;

public class SolutionBFS {

    public static void main(String[] args) {
        SolutionBFS solution = new SolutionBFS();

        String[] words = {"hot" , "dot", "dog", "lot", "log", "cog"};
        System.out.println(solution.ladderLength("hit", "cog", Arrays.asList(words)));
    }

    // 127. Word Ladder
    char[] letters = "abcdefghijklmnopqrstuvwxyz".toCharArray();
    public int ladderLength(String beginWord, String endWord, List<String> wordList) {
        Queue<String> queue = new LinkedList<>();
        queue.add(beginWord);
        Set<String> words = new HashSet<>(wordList);
        int count = 1;
        while (!queue.isEmpty()) {
            Queue<String> tmpQueue = new LinkedList<>();
            count++;
            while (!queue.isEmpty()) {
                String word = queue.poll();
                for (int i = 0; i < word.length(); i++) {
                    char[] chars = word.toCharArray();
                    for (int j = 0; j < letters.length; j++) {
                        if (letters[j] == word.charAt(i)) {
                            continue;
                        }
                        chars[i] = letters[j];
                        String tmp = new String(chars);
                        if (endWord.equals(tmp) && words.contains(tmp)) {
                            return count;
                        }
                        if (words.contains(tmp)) {
                            words.remove(tmp);
                            tmpQueue.add(tmp);
                        }

                    }
                }
            }
            queue = tmpQueue;
        }
        return 0;
    }
}
