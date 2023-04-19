import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import org.junit.Test;

import java.security.KeyStore;

import static org.junit.Assert.assertTrue;

public class TestRunnerAPI {

    @Test
    public void testParallel(){

        Results results = Runner.path("classpath:features").tags("@tnr").parallel(2);
        assertTrue(results.getErrorMessages(), results.getFailCount() == 0);
    }
}

