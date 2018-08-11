import java.text.*;
import java.util.*;

public class TestSync2 implements Runnable {
	int b = 100;
	synchronized void m1() throws InterruptedException {
		b = 1000;

		System.out.println("before sleep b="+b);

		Thread.sleep(5000);
		Date nowTime = new Date();
		SimpleDateFormat matter = new SimpleDateFormat(
                "现在时间:yyyy年MM月dd日E HH时mm分ss秒");
        System.out.println(matter.format(nowTime));
        //System.out.println(new Date(System.currentTimeMillis()));

        //Calendar c = Calendar.getInstance();
		//System.out.println("当前时间: " + c.getTime());
		System.out.println("===========b="+b);
	}

	synchronized void m2() throws InterruptedException {
		System.out.println("before sleep1 b="+b);

		Thread.sleep(2500);
		b = 2000;
		System.out.println("before sleep2 b="+b);

	}

	public static void main(String[] args) throws InterruptedException {
		TimeZone.setDefault(TimeZone.getTimeZone("Asia/Shanghai"));
		TestSync2 tt = new TestSync2();
		Thread t = new Thread(tt);
		t.start();

		tt.m2();
		//Calendar c = Calendar.getInstance();
		//System.out.println("当前时间: " + c.getTime());
		Date nowTime = new Date();
		SimpleDateFormat matter = new SimpleDateFormat(
                "现在时间:yyyy年MM月dd日E HH时mm分ss秒");
        System.out.println(matter.format(nowTime));
        //System.out.println(new Date(System.currentTimeMillis()));
		System.out.println("===========main thread b="+ tt.b);
	}

	@Override
	public void run() {
		try{
			m1();
		} catch(InterruptedException e){
			e.printStackTrace();
		}
	}
}


/*
1.synchronized
2.线程的几个状态:new,runnable(thread.start()),running,blocking(Thread.Sleep())

如果对这几个不熟悉的同学不要着急下面我都会讲,下面我解释一下整个流程:

新建一个线程t, 此时线程t为new状态。
调用t.start()，将线程至于runnable状态。
这里有个争议点到点是t线程先执行还是tt.m2先执行呢，我们知道此时线程t还是runnable状态，此时还没有被cpu调度，但是我们的tt.m2()是我们本地的方法代码，此时一定是tt.m2()先执行。
执行tt.m2()进入synchronized同步代码块，开始执行代码，这里的sleep()没啥用就是混淆大家视野的，此时b=2000。
在执行tt.m2()的时候。有两个情况:
情况A：有可能t线程已经在执行了，但是由于m2先进入了同步代码块，这个时候t进入阻塞状态，然后主线程也将会执行输出，这个时候又有一个争议到底是谁先执行？是t先执行还是主线程，这里有小伙伴就会把第3点拿出来说，肯定是先输出啊,t线程不是阻塞的吗，调度到CPU肯定来不及啊？很多人忽略了一点，synchronized其实是在1.6之后做了很多优化的，其中就有一个自旋锁，就能保证不需要让出CPU，有可能刚好这部分时间和主线程输出重合，并且在他之前就有可能发生，b先等于1000，这个时候主线程输出其实就会有两种情况。2000 或者 1000。

情况B:有可能t还没执行，tt.m2()一执行完，他刚好就执行，这个时候还是有两种情况。b=2000或者1000

6.在t线程中不论哪种情况，最后肯定会输出1000，因为此时没有修改1000的地方了。



*/

















