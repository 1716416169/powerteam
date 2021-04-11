package com.powerteam.config;

import lombok.Data;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;

@Configuration
@Data
public class PowerTeamConfig {

    /**
     * 网站的根路径 例如 /powerteam
     */
    private String webRoot;

    /**
     * 网站绝对物理路径 例如 D:/Tomcat/webapps/powerteam/WEB-INF/classes/
     */
    private String absoluteWebRoot;

    @Value("${powerTeam.title}")
    private String title;

    @Value("${powerTeam.pageSize}")
    private Integer pageSize;

    @Value("${powerTeam.baiduMapAk}")
    private String baiduMapAk;

    @Value("${spring.mail.username}")
    private String mailFrom;
}
