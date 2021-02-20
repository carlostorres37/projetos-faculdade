class Array3 {
    public static void main(String[] args) {
        double[] vet;
        int i;

        vet = new double[3];
        vet[0] = 2.1;
        vet[1] = 3.4;
        vet[2] = 4.7;
        System.out.print("vet = { ");
        for(i = 0; i < 3; i++)
            System.out.print(vet[i] + " ");
        System.out.println("}");
    }
}
