package com.central.oauth.controller;

import com.central.common.model.PageResult;
import com.central.common.model.Result;
import com.central.oauth.dto.ClientDto;
import com.central.oauth.model.Client;
import com.central.oauth.service.IClientService;
import com.google.common.collect.Maps;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Map;

/**
 * 应用相关接口
 *
 * @author zlt
 * <p>
 * Blog: https://zlt2000.gitee.io
 * Github: https://github.com/zlt2000
 */
@RestController
@RequestMapping("/clients")
public class ClientController {
    @Autowired
    private IClientService clientService;

    /**
     * 应用列表
     */
    @GetMapping("/list")
    public PageResult<Client> list(@RequestParam Map<String, Object> params) {
        return clientService.listClient(params, true);
    }

    /**
     * 根据id获取应用
     */
    @GetMapping("/{id}")
    public Client get(@PathVariable Long id) {
        return clientService.getById(id);
    }

    /**
     * 所有应用
     */
    @GetMapping("/all")
    public Result<List<Client>> allClient() {
        PageResult<Client> page = clientService.listClient(Maps.newHashMap(), false);
        return Result.succeed(page.getData());
    }

    /**
     * 删除应用
     */
    @DeleteMapping("/{id}")
    public void delete(@PathVariable Long id) {
        clientService.delClient(id);
    }

    /**
     * 保存或者修改应用
     */
    @PostMapping("/saveOrUpdate")
    public Result saveOrUpdate(@RequestBody ClientDto clientDto) throws Exception {
        return clientService.saveClient(clientDto);
    }
}
