package tw.brad.javaee;

public class Brad12 {
	private int x, y;
	public Brad12(String x, String y) {
		this.x = Integer.parseInt(x);
		this.y = Integer.parseInt(y);
	}
	public int add() {
		return x + y;
	}
}
