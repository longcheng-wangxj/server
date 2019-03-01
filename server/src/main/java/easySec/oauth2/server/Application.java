/**
 * @ClassName Application
 * @Description TODO
 * @Author wxj
 * @Date 2019/1/30 11:56
 * @Version 1.0
 **/

package easySec.oauth2.server;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

@EnableWebMvc//启动MVC
@EnableTransactionManagement // 启注解事务管理
@SpringBootApplication//SpringBoot启动核心
public class Application extends WebMvcConfigurerAdapter  {
    public static void main(String[] args){
        SpringApplication.run(Application.class, args);
    }
}
