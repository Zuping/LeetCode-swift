import java.util.HashMap;
import java.util.Random;

public class Solution535 {
    private HashMap<String, String> tiny2long = new HashMap<>();
    private HashMap<String, String> long2tiny = new HashMap<>();
    private String str = "1234567890abcdefghijklmnoperstuvwxyz";
    Random random = new Random();

    // Encodes a URL to a shortened URL.
    public String encode(String longUrl) {
        if (long2tiny.containsKey(longUrl)) {
            return long2tiny.get(longUrl);
        }

        StringBuilder sb = new StringBuilder();
        while (true) {
            for (int i = 0; i < 6; i++) {
                sb.append(str.charAt(random.nextInt(str.length())));
            }
            String key = sb.toString();
            if (!tiny2long.containsKey(key)) {
                tiny2long.put(key, longUrl);
                long2tiny.put(longUrl, key);
                return sb.toString();
            }
        }
    }

    // Decodes a shortened URL to its original URL.
    public String decode(String shortUrl) {
        return tiny2long.get(shortUrl);
    }
}
