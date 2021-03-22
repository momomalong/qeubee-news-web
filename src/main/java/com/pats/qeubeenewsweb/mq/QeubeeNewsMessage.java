package com.pats.qeubeenewsweb.mq;

import java.io.Serializable;

import lombok.Data;

/**
 * <p>Title: QeubeeNewsMessage</p>
 */
@Data
public class QeubeeNewsMessage implements Message, Serializable {

    private static final long serialVersionUID = 5461636641701732490L;

    private String firstFilterkey;

    private String secondFilterkey;

    private String msgType;

    private Object data;

    public QeubeeNewsMessage(String msgType, Object data) {
        this.firstFilterkey = "*";
        this.secondFilterkey = "*";
        this.msgType = msgType;
        this.data = data;
    }
}
