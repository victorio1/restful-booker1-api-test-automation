package restfullbooker.deletebooking;

import com.intuit.karate.KarateOptions;
import com.intuit.karate.junit4.Karate;
import org.junit.runner.RunWith;

@RunWith(Karate.class)
@KarateOptions(features = "classpath:restfullbooker/deletebooking/deleteBooking.feature")
public class deleteBookingRunner {
}
