package br.com.cgr.authserver;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import junit.framework.TestCase;

@RunWith(SpringJUnit4ClassRunner.class)
@SpringBootTest
public class AuthServerTest extends TestCase {

	@Test
	public void testApp() {
		assertTrue(true);
	}
}
