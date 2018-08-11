public class Demo {
    public static synchronized void staticFunction()
            throws InterruptedException {
        for (int i = 0; i < 3; i++) {
            Thread.sleep(1000);
            System.out.println("Static synchronized function running...");
        }
    }
 
    public synchronized void function() throws InterruptedException {
        for (int i = 0; i <3; i++) {
            Thread.sleep(1000);
            System.out.println("synchronized function running...");
        }
    }
 
    public static void main(String[] args) {
        final Demo demo = new Demo();
        Thread thread1 = new Thread(new Runnable() {
            @Override
            public void run() {
                try {
                    staticFunction();
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
        });
 
        Thread thread2 = new Thread(new Runnable() {
            @Override
            public void run() {
                try {
                    demo.function();
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
        });
 
        thread1.start();
        thread2.start();
    }
}
