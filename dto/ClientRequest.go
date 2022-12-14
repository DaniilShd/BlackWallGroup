package dto

import "errors"

type ClientRequest struct {
	ClientId string `json:"client_id"`
	Type     string `json:"type_transaction"`
	Amount   int    `json:"amount"`
}

func Valid(c ClientRequest) (bool, error) {
	if c.Type == "deposit" || c.Type == "withdraw" {
		return true, nil
	}
	return false, errors.New("invalid transaction type")
}

func (c *ClientRequest) IsWithdrawal() bool {
	return c.Type == "withdraw"
}
