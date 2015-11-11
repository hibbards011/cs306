import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.List;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.logging.Level;
import java.util.logging.Logger;

public class BubbleSort {

    public static void main(String args[]) {
	int size = 10000000;
	List<Integer> list = new ArrayList<Integer>();

	// int[] array = new int[]{5, 3, 8, 2, 1, 4, 7, 6, 10, 9};
	
	// System.out.print("Array before it is sorted: ");
	// for (int i = 0; i < 10; i++) {
	//     System.out.print(array[i]);
	//     System.out.print(' ');
	// }
	// System.out.println();
        
    String filename;
    filename = args[0];

	list = readFile(list, filename);
	int[] array = convertIntegers(list);
	
	long startTime = System.nanoTime();
	bubbleSort(array);
	long endTime = System.nanoTime();
	
	// System.out.print("Array after it is sorted : ");
	// for (int i = 0; i < 10; i++) {
	//     System.out.print(array[i]);
	//     System.out.print(' ');
	// }
	// System.out.println();

	System.out.println("Program took " + (((endTime - startTime) / 1000000) / 1000) + " seconds.");
    }

    public static List<Integer> readFile(List<Integer> list, String filename) {
	try {
	    BufferedReader br = new BufferedReader(new FileReader(filename));
	    String num;
	    while ((num = br.readLine()) != null) {
		list.add(Integer.parseInt(num));
	    }
	} catch (FileNotFoundException ex) {
	    Logger.getLogger(BubbleSort.class.getName()).log(Level.SEVERE, null, ex);
	} catch (IOException ex) {
	    System.out.println("ERROR: " + ex.getMessage());
	}
	return list;
    }

    public static int[] convertIntegers(List<Integer> integers)
    {
	int[] ret = new int[integers.size()];
	for (int i=0; i < ret.length; i++)
	    {
		ret[i] = integers.get(i).intValue();
	    }
	return ret;
    }
    
    public static void bubbleSort(int[] arr) {
      boolean swapped = true;
      int j = 0;
      int tmp;
      while (swapped) {
	  swapped = false;
	  j++;
	  for (int i = 0; i < arr.length - j; i++) {
	      if (arr[i] > arr[i + 1]) {                          
		  tmp = arr[i];
		  arr[i] = arr[i + 1];
		  arr[i + 1] = tmp;
		  swapped = true;
	      }
	      
	  }                
	  
      }
      
    }
}