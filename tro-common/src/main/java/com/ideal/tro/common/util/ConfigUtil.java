package com.ideal.tro.common.util;

import java.io.IOException;
import java.io.InputStream;
import java.net.URLDecoder;
import java.util.Properties;
import java.util.jar.JarEntry;
import java.util.jar.JarFile;

/**
 * @author uatxj990267
 */

public class ConfigUtil {

    private Properties props = new Properties();

    public ConfigUtil(String file) {

        //String path = ConfigUtil.class.getClassLoader().getResource(file).getPath();
        //InputStream is = null;

        InputStream is = null;
        try {
            is = this.getClass().getResourceAsStream(file);
        } catch (Exception e) {
            System.out.println(" getResourceAsStream Error is getResourceAsStream ");
            e.printStackTrace();
        }
        try {
            //is = new FileInputStream(path);
            props.load(is);
        } catch (IOException e) {
            System.out.println(" IOException Error is ConfigUtil ");
            e.printStackTrace();
        } finally {
            try {
                is.close();
            } catch (IOException e) {
                System.out.println("IOException2 Error is ConfigUtil ");
                e.printStackTrace();
            }
        }
    }


    /**
     * 得到资源文件读取流
     *
     * @param filePath 资源文件路径
     * @return 资源文件流
     * @throws IOException
     */
    public InputStream getJarIO(String filePath) throws IOException {
        String JarPath = URLDecoder.decode(getClass().getProtectionDomain()
                .getCodeSource().getLocation().getFile(), "UTF-8");
        if (JarPath.startsWith("/"))
            JarPath = JarPath.substring(1);
        JarFile cJar = new JarFile(JarPath);
        JarEntry util = cJar.getJarEntry(filePath);
        return cJar.getInputStream(util);
    }

    public int getInt(String key) {
        return Integer.parseInt(props.getProperty(key));
    }

    public String getString(String key) {
        return props.getProperty(key);
    }

    public static void main(String[] args) {
        ConfigUtil ConfigUtil = new ConfigUtil("");
    }
}
