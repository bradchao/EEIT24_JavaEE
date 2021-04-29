package tw.brad.utils;

public class BradAPIs {
	public static int createLottery() {
		int ret = (int)(Math.random()*49+1);
		return ret;
	}
	public static String sayYa(String name) {
		return "Hello, " + name;
	}
}
