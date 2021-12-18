public class test {
	static{
		try{
			Runtime.getRuntime().exec("cmd.exe /c start echo test");
		} catch (Exeption e) {
			e.printStackTrace();
		}
	}
}