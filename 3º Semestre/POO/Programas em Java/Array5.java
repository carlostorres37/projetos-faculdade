class Array5 {
    public static void main(String[] args) {
        double[] vet;
        int i;
        final int MAX = 40;		/* MAX é uma constante */

        vet = new double[MAX];
        vet[0] = 0.1;
        for(i = 1; i < MAX; i++)
        	vet[i] = vet[i - 1] + 0.1;
        System.out.print("vet = { ");
            for(i = 0; i < MAX; i++)
		System.out.print(vet[i] + " ");
        System.out.println("}");
    }
}
