package com.company.day015;

public class Arr2004 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		int[][] num1 = new int[2][3];

		for (int i = 0; i < num1.length; i++) {
			for (int j = 0; j < num1[i].length; j++) {
				num1[i][j] = (i + 1) * 100 + j + 1;
			}

		}

		for (int i = 0; i < num1.length; i++) {
			for (int j = 0; j < num1[i].length; j++) {
				System.out.print(num1[i][j] + "\t");
			}

			System.out.println();

		}

	}

}
