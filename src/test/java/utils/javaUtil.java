package utils;

import java.io.File;
import java.nio.file.Files;

public class javaUtil {

    public static String getStaticMethod(){
        return "hello static";
    }

    public String getNonStaticMethod(){
        return "hello NonStatic";
    }


    public static void writeToFile(String filename, String content)
    {
        try {
            File f = new File(filename);
            Files.write(f.toPath(), content.getBytes());
            System.out.println("File ==> " + f.getAbsolutePath());
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }

}
