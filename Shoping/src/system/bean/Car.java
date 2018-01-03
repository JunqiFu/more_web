package system.bean;

import java.util.HashMap;


public class Car {
	 
	private Goods goods; //商品
	
	private int number; //数量

	public Goods getGoods() {
		return goods;
	}

	public void setGoods(Goods goods) {
		this.goods = goods;
	}

	public int getNumber() {
		return number;
	}

	public void setNumber(int number) {
		this.number = number;
	}
	
	
	public void  main(String[] args){		
		HashMap<Integer, Car> cars = new HashMap<Integer, Car>();
		
		Car car1 = new Car();
		car1.setNumber(2);
		car1.setGoods(new Goods());
		
		cars.put(36, car1);
		
		Car car2 = new Car();
		car2.setNumber(3);
		car2.setGoods(new Goods());
		
		cars.put(56, car2);
	}
}
