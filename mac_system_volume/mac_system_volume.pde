//ashley james brown
//tested under mac osx 10.9.5
// processing 2.2.1 java 8




import java.io.BufferedReader;
import java.io.File;
import java.io.InputStreamReader;

 
public void setMasterVolume(float value)
    {
        String command = "set volume " + value;
        try
        {
            ProcessBuilder pb = new ProcessBuilder("osascript","-e",command);
            pb.directory(new File("/usr/bin"));
            System.out.println(command);
            StringBuffer output = new StringBuffer();
            Process p = pb.start();
            p.waitFor();

            BufferedReader reader =
                    new BufferedReader(new InputStreamReader(p.getInputStream()));

            String line;
            while ((line = reader.readLine())!= null)
            {
                output.append(line + "\n");
            }
            System.out.println(output);
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
    }




void setup(){
  size(100,100);
  // goes from 0.0 to 7. the f is optional - especially if throwing data in to control it
  setMasterVolume(0.0f); // sets to silent.
  //setMasterVolume(7.0f); // sets to max
}


void draw(){
  
  
}
