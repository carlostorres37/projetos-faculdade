class Array4 {
    public static void main(String[] args) {
        double[] vet;
        int i;

        vet = new double[30];
        vet[0] = 0.1;
        for(i = 1; i < 30; i++)
        	vet[i] = vet[i - 1] + 0.1;
        System.out.print("vet = { ");
        for(i = 0; i < 30; i++)
            System.out.print(vet[i] + " ");
        System.out.println("}");
    }
}
