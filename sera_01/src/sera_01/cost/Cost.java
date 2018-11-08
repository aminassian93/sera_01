package sera_01.cost;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.*;

public class Cost {
	
	public static HashMap<String, String> hashmap = new HashMap<String, String>();
	
    public static void readCountry() throws IOException{
        BufferedReader reader = new BufferedReader(new FileReader("/Users/IvanYu/git/sera_01/sera_01/src/sera_01/cost/energyrates.csv"));    
        String line;

        while ((line = reader.readLine()) != null) {
            String str[] = line.split(",");
            if (str.length > 1) {
                System.out.println("Data 0: " + str[0]);
                System.out.println("Data 1: " + str[1]);
                hashmap.put(str[0].trim(), str[1]);
            }

        }
    }

	public static void main(String[] args) {
		
        try {
			readCountry();
	        Scanner in = new Scanner(System.in);
	        String l = null;

	        System.out.print("Please enter a zip code:");
	        l = in.nextLine();
	        l = l.trim();

	        if (hashmap.containsKey(l)) {
	            System.out.println("Zip Code: " + l + "\nRates: "
	                + hashmap.get(l));
	        } else {
	            System.out.println("Missing key for " + l);
	        }
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}


		
	}
	
}
