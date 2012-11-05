import com.marklogic.xcc.ContentSource;
import com.marklogic.xcc.ContentSourceFactory;
import com.marklogic.xcc.Request;
import com.marklogic.xcc.ResultSequence;
import com.marklogic.xcc.Session;
import com.marklogic.xcc.exceptions.RequestException;

public class AdhocSimpleExample {

	public static void processResultSequence(ResultSequence rs){
		while(rs.hasNext()){
			System.out.println(rs.next().asString());
		}
	}
	
	/**
	 * @param args
	 * @throws RequestException 
	 */
	public static void main(String[] args) throws RequestException {
		ContentSource contenSource = ContentSourceFactory.newContentSource("localhost", 
	               8022, "openspace_1", "openspace");
		
		Session  session = contenSource.newSession();
		
		Request request = session.newAdhocQuery(
				"declare namespace fpml = \"http://www.fpml.org/2007/FpML-4-4\"; " +
				"for $sentBy in fn:doc()" +
				"return <li>" +
				"<message-sender>{$sentBy//fpml:sentBy/text()}</message-sender>" +
				"<message-receiver>{$sentBy//fpml:sendTo/text()}</message-receiver>" +
				"</li>");
		ResultSequence rs = session.submitRequest(request);
		processResultSequence(rs);
		}
}
