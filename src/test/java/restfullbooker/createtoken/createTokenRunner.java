package restfullbooker.createtoken;


import com.intuit.karate.KarateOptions;
import com.intuit.karate.junit4.Karate;
import org.junit.runner.RunWith;

@RunWith(Karate.class)
@KarateOptions(features = "classpath:restfullbooker/createtoken/createToken.feature")
public class createTokenRunner {
}
